require('dotenv').config();
const express = require("express");
const mysql = require('mysql');
const app = express();
app.use(express.json());
app.use(express.urlencoded({extended:true}));
const cors = require("cors");
app.use(cors());


const bcrypt = require("bcrypt");
const jwt = require('jsonwebtoken');
const { response } = require('express');

var pool = mysql.createPool({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: '',
    database: 'carrepair'
});



// regisztráció
app.post('/reg', function(req, res) {
    const { name,city,street,email,telephone, password } = req.body;
    const q1 = "SELECT * FROM clients WHERE name = ?";
    pool.query(q1, [name],
        function (error, result) {
            if (error)
                res.status(500).send({ message: "Adatbázis hiba!" });
            else if (result.length > 0) {
                res.status(400).send({ message: "Már van ilyen nevű felhasználó!" })
            } else {
                const hash = bcrypt.hashSync(password, 10);
                const q2 = "INSERT INTO clients (name,city,street,email,telephone,password) VALUES (?, ?, ?, ?, ?, ?)";
                pool.query(q2, [name,city,street,email,telephone, hash],
                    function (error, result) {
                        if (!error) {
                            
                            res.status(201).send({ message: "Sikeres regisztráció" })
                            res.send(result);

                        } else {
                            res.send(error);
                        }
                    });
            }
        });
})

// bejelentkezés
app.post("/login", function (req, res) {
    const { name, password } = req.body;
    const q = "SELECT * FROM clients WHERE name = ?";
    pool.query(q, [name],
        function (error, result) {
            if (error)
                res.status(500).send({ message: "Adatbázis hiba!" });
            else if (result.length == 0) {
                res.status(400).send({ message: "Nincs ilyen nevű felhasználó!" })
            } else {
                user = JSON.parse(JSON.stringify(result[0]));
                if (!bcrypt.compareSync(password, user.password))
                    return res.status(401).send({ message: "Hibás jelszó!" })
                const token = jwt.sign(user, process.env.TOKEN_SECRET, { expiresIn: 3600 })
                res.json({ token: token, message: "Sikeres bejelentkezés." })
            }
        }
    )

})




// token ellenőrzése middleware-rel (forma: BEARER token)
function authenticateToken(req, res, next) {
    const authHeader = req.headers['authorization']
    const token = authHeader && authHeader.split(' ')[1]
    if (!token) 
        return res.status(401).send({message: "Azonosítás szükséges!"})
    jwt.verify(token, process.env.TOKEN_SECRET, (err, user) => {
        if (err) 
            return res.status(403).send({message: "Nincs jogosultsága!"})
        req.user = user
        next()
    })
}

app.listen(5050, () => console.log("Server started on port 5050"))
