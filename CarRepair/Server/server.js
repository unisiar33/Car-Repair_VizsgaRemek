const express = require("express");
const app = express();
app.use(express.json());
const cors = require("cors");
app.use(cors());
require('dotenv').config();

const bcrypt = require("bcrypt");
const jwt = require('jsonwebtoken');

const mysql = require('mysql');

const pool = mysql.createPool({
    host: process.env.HOST,
    port:process.env.PORT,
    user: process.env.USER,
    password: process.env.PASSWORD,
    database: process.env.DATABASE
});



// regisztráció
app.post('/reg', function(req, res) {
    const { name,city,street,email,telephone, password } = req.body;
    const q1 = "SELECT * FROM clients WHERE name = ?";
    pool.query(q1, [req.body.name],
        function (error, result) {
            if (error){
                return res.status(500).json({ message: "Adatbázis hiba!" });
            }
            else if(result.length > 0) {
                return res.status(400).json({ message: "Már van ilyen nevű felhasználó!" });
            } 
            else{ 
                const hash = bcrypt.hashSync(password, 10);
                const q2 = "INSERT INTO clients (name,city,street,email,telephone,password) VALUES (?, ?, ?, ?, ?, ?)";
                pool.query(q2, [name,city,street,email,telephone, hash],
                    function (error, result) {
                        if (!error) {
                            
                            res.status(201).json({ message: "Sikeres regisztráció" })
                            

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
    pool.query(q, [req.body.name],
        function (error, result) {
            if (error)
                return res.status(500).json({ message: "Adatbázis hiba!" });
            else if (result.length == 0) {
                return res.status(400).json({ message: "Nincs ilyen nevű felhasználó!" })
            } else {
                user = JSON.parse(JSON.stringify(result[0]));
                if (!bcrypt.compareSync(password, user.password))
                    return res.status(401).json({ message: "Hibás jelszó!" })
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





//user adatai
app.get("/user", authenticateToken, function (req, res) {
    const q = "SELECT name, city,street,telephone,email "
            + "FROM clients WHERE name=?";
    pool.query(q, [req.user.name], function (error, results) {
        if (!error) {
            res.send(results);
        } else {
            res.send(error);
        }
    });
});



// Auto hozzáadása

app.post("/addcar", authenticateToken, function (req, res) {
    const q = "INSERT INTO fleet (userid, Vendor, type, licenseplate, vin_number,fuel,cubiccapacity,power) "
            + "VALUES(?,?,?,?,?,?,?,?)"
    pool.query(q, 
        [req.user.userid,
        req.body.vendor,
        req.body.Type,
        req.body.LicensePlate,
        req.body.VIN_number,
        req.body.Fuel,
        req.body.CubicCapacity,
        req.body.Power],
        function (error, results) {
        if (!error) {
            res.send(results);
        } else {
            res.send(error);
        }
    });
})

// Autó flota 

app.get("/fleet", authenticateToken, function (req, res) {
    const q = "SELECT  vendor,Type,LicensePlate,VIN_number,Fuel,Power,carId FROM Fleet where userid=?";
    pool.query(q,[req.user.userid], function (error, results) {
        if (!error) {
            res.send(results);
        } else {
            res.send(error);
        }
    });
});



// Auto törlése a flottából

app.delete("/fleet/deletecar/:id", authenticateToken, function (req, res) {
    const q = "DELETE FROM fleet WHERE carId=?";
    pool.query(q, [req.params.id], function (error, results) {
        if (!error) {
            res.send(results);
        } else {
            res.send(error);
        }
    });
});

// Auto törlése a szerviztörténetből

app.delete("/fleet/deleteservice/:id", function (req, res) {
    const q = "DELETE FROM worksheet where carId=?";
    pool.query(q, [req.params.id], function (error, results) {
        if (!error) {
            return
        } else {
           return
        }
    });
});

// Auto törlése a szerviztörténetből

app.delete("/fleet/deleteticket/:id", function (req, res) {
    const q = "DELETE FROM worksheet where ticketid=?";
    pool.query(q, [req.params.id], function (error, results) {
        if (!error) {
            return
        } else {
           return
        }
    });
});

// Auto regisztrálása szervizre

app.post("/service/:id", authenticateToken, function (req, res) {
    const q = "INSERT INTO worksheet (userid,carId) "
            + "VALUES(?,?)"
    pool.query(q, 
        [req.user.userid,
         req.params.id],
        function (error, results) {
        if (!error) {
            res.send(results);
        } else {
            res.send(error);
        }
    });
})


// Élő ticketek mutatása adminnak
app.get("/service", authenticateToken, function (req, res) {
    const q = "SELECT worksheet.ticketId, clients.name, fleet.vendor,fleet.type,fleet.Licenseplate,fleet.vin_number "
            +" FROM worksheet JOIN fleet ON fleet.carid=worksheet.carid"
            +" JOIN clients ON clients.userId = worksheet.userId"
            +" WHERE worksheet.Jstatus =0";
    pool.query(q, function (error, results) {
        if (!error) {
            res.send(results);
        } else {
            res.send(error);
        }
    }); 
});

// Munkalap kitöltés

app.post("/worksheet", authenticateToken, function (req, res) {
    const q = "UPDATE worksheet SET Jstatus='1', dateStart=?, dateEnd=?, workhours=?,jobType=?,mileage=?,mechanic=?,Problem=?,jobDone=?,Parts=?,TotalSum=? WHERE ticketid=? "
    pool.query(q, 
    [
    req.body.startDate,
    req.body.endDate,
    req.body.Workhour,
    req.body.jobType,
    req.body.Mileage,
    req.body.Technician,
    req.body.Problem,
    req.body.Job,
    req.body.Parts,
    req.body.Total_Charge,
    req.body.Ticketnumber
    ],
        function (error, results) {
        if (!error) {
            res.send(results);
        } else {
            res.send(error);
        }
    });
})

// Összes munkalap keresés

app.get("/servicehistory", authenticateToken, function (req, res) {
    const q = "SELECT worksheet.ticketId, clients.name, worksheet.jobType, fleet.vendor,fleet.type,fleet.Licenseplate, worksheet.mileage, "
            +" worksheet.dateStart,worksheet.workhours, worksheet.problem, worksheet.jobDone, worksheet.mechanic, worksheet.parts, "
            +" worksheet.totalSum "
            +" FROM worksheet JOIN fleet ON fleet.carid=worksheet.carid"
            +" JOIN clients ON clients.userId = worksheet.userId;";
    pool.query(q, function (error, results) {
        if (!error) {
            res.send(results);
        } else {
            res.send(error);
        }
    }); 
});

//Autó szerviz története

app.get("/history", authenticateToken, function (req, res) {
    const q = "SELECT  LicensePlate,carId FROM Fleet where userid=?";
    pool.query(q,[req.user.userid], function (error, results) {
        if (!error) {
            res.send(results);
        } else {
            res.send(error);
        }
    });
});

// Autó szerviz története rendszámonként

app.post("/history/car", authenticateToken, function (req, res) {
    const q = "SELECT worksheet.dateStart,worksheet.mileage,worksheet.ticketId,  fleet.vendor,fleet.type,fleet.Licenseplate,worksheet.jobType, "
    +" worksheet.workhours, worksheet.problem, worksheet.jobDone, worksheet.mechanic, worksheet.parts, worksheet.totalSum "
    +" FROM worksheet JOIN fleet ON fleet.carid=worksheet.carid"
    +" WHERE fleet.carId=?"
    pool.query(q, [req.body.historyPlate],function (error, results) {
        if (!error) {
            res.send(results);
        } else {
            res.send(error);
        }
    });
})



app.listen(5050, () => console.log("Server started on port 5050"))

