var express  = require('express'),
    path     = require('path'),
    bodyParser = require('body-parser'),
    app = express(),
    expressValidator = require('express-validator');


app.set('views','./views');
app.set('view engine','ejs');

app.use(express.static(path.join(__dirname, 'public')));
app.use(bodyParser.urlencoded({ extended: true })); 
app.use(bodyParser.json());
app.use(expressValidator());

/* CONNEXION MySQL */
var connection  = require('express-myconnection'),
    mysql = require('mysql');

app.use(
    connection(mysql,{
        host     : 'localhost',
        user     : 'root',
        password : 'root',
        database : 'stifco',
        debug    : false //set true if you wanna see debug logger
    },'request')
);

var router = express.Router();

router.use(function(req, res, next) {
    console.log(req.method, req.url);
    next();
});

var coRoute = router.route('/');
var regRoute = router.route('/register');
var propRoute = router.route('/proposer');
var listeRoute = router.route('/liste');

var statut = false;

coRoute.get(function(req, res){

    req.getConnection(function(err,conn){

        if (err) return next("Cannot Connect");

        if (!statut){
            res.render('index', {title: "Connexion"});
        }

        else {
            res.render('home', {title: "Accueil", data: utilisateur});
        }

    });

});


coRoute.post(function(req,res, next){

    // VALIDATION DES CHAMPS
    req.assert('codeNavigo','Veuillez saisir un numéro navigo valide !').len(8);
    req.assert('password','Veuillez saisir un mot de passe entre 6 et 20 caractères !').len(6,20);

    var errors = req.validationErrors();
    if(errors){
        res.status(422).json(errors);
        return;
    }

    var codeNavigo = req.body.codeNavigo;
    var password = req.body.password;

    //INSERTION MySQL
    req.getConnection(function (err, conn){

        if (err) return next("Connexion impossible !");

        conn.query("SELECT * FROM utilisateur WHERE codeNavigo = " + [codeNavigo] + " AND password = '" + [password] + "'", function(err, rows){
           if(err){
                console.log(err);
                return next("Erreur MySQL !");
           }

            if(rows.length < 1){
                console.log("Fail");
                res.send("Fail");
            }

            else {
                statut = true;
                utilisateur = rows;
                console.log("Ok");
                console.log(utilisateur[0].codeNavigo);
                res.render('home', {title: "Accueil", data: utilisateur});
                console.log(statut);
            }

        });
     });

});

regRoute.get(function(req, res){

    req.getConnection(function(err,conn){

        if (err) return next("Cannot Connect");
        conn.query("SELECT codePostal FROM commune",function(err, rows){
                // console.log(rows);
                if(err) throw err;
                res.render('register', {title: "Inscription", rows:rows});
        });
    });
});

regRoute.post(function(req,res){

    // VALIDATION DES CHAMPS
    req.assert('codeNavigo','Veuillez saisir un numéro navigo valide !').len(8);
    req.assert('password','Veuillez saisir un mot de passe entre 6 et 20 caractères !').len(6,20);
    req.assert('nom','Veuillez saisir un nom !').notEmpty();
    req.assert('prenom','Veuillez saisir un prénom !').notEmpty();
    req.assert('mail','Veuillez saisir une adresse mail valide !').isEmail();
    req.assert('cp','Veuillez saisir un code postal valide !').notEmpty().isInt();

    var errors = req.validationErrors();
    if(errors){
        res.status(422).json(errors);
        return;
    }

    //TABLEAU AVEC TOUTES LES DONNEES
    var data = {
        codeNavigo:req.body.codeNavigo,
        password:req.body.password,
        nom:req.body.nom,
        prenom:req.body.prenom,
        mail:req.body.mail,
        cp:req.body.cp
     };

    //INSERTION MySQL
    req.getConnection(function (err, conn){

        if (err) return next("Connexion impossible !");

        var query = conn.query("INSERT INTO utilisateur set ? ", data, function(err, rows){

           if(err){
                console.log(err);
                return next("Erreur MySQL !");
           }

          res.sendStatus(200);

        });

     });

});

propRoute.get(function(req, res){

    req.getConnection(function(err,conn){

        if (err) return next("Cannot Connect");
        conn.query("SELECT * FROM commune",function(err, commune){
        conn.query("SELECT * FROM gare",function(err, gare){
            listeCommune = commune;
            listeGare = gare;
            res.render('proposer', {title: "Proposition", gare: gare, commune: commune});
        });
        });
    });
});

propRoute.post(function(req,res){

    // VALIDATION DES CHAMPS
    req.assert('semaine','Veuillez entrer le numéro de semaine exacte !' ).notEmpty().isInt();
    req.assert('nbPassagers','Veuillez entrer un nombre de passagers exacte !' ).notEmpty().isInt();
    req.assert('hDepart','Veuillez préciser un horaire exacte !' ).notEmpty();
    req.assert('hRetour','Veuillez préciser un horaire exacte !' ).notEmpty();
    req.assert('gare','Veuillez sélectionner une gare d\'arrivée !' ).notEmpty();
    req.assert('commune','Veuillez sélectionner une ville de départ !' ).notEmpty();

    var errors = req.validationErrors();
    if(errors){
        res.status(422).json(errors);
        return;
    }

    //GET DATA
    var data = {
        idOffreur:utilisateur[0].codeNavigo,
        semaine:req.body.semaine,
        nbPassagers:req.body.nbPassagers,
        hDepart:req.body.hDepart,
        hRetour:req.body.hRetour,
        idGare:req.body.gare,
        idCommune:req.body.commune
     };

    //INSERTION MySQL
    req.getConnection(function (err, conn){

        if (err) return next("Connexion impossible !");

        var query = conn.query("INSERT INTO deplacement set ? ", data, function(err, rows){

           if(err){
                console.log(err);
                return next("Erreur MySQL !");
           }

          res.sendStatus(200);

        });

     });

});

listeRoute.get(function(req, res){

    req.getConnection(function(err,conn){

        if (err) return next("Cannot Connect");

        conn.query("SELECT * FROM deplacement", function(err, rows){

           if(err){
                console.log(err);
                return next("Erreur MySQL !");
           }

            if(rows.length < 1){
                console.log("Fail List");
                //res.render('liste', {title: "Liste des transports proposés", data: rows});
                //res.send("Fail list");
            }

            else {
                console.log("Ok");
                //res.render('liste', {title: "Liste des transports proposés", data: rows});
            }
            res.render('liste', {title: "Liste des transports proposés", data: rows});

        });
        
    });

});

app.use('/', router);

var server = app.listen(3000,function(){

   console.log("Ouvert sur le port",server.address().port);

});