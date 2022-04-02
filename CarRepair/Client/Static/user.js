
const token = 'Bearer: ' + sessionStorage.token
load()


function load() {
    const url = 'http://localhost:5050/user'
    fetch(url, {
        method: 'GET',
        headers: {
            'Authorization': token
        }
    })
        .then((response) => response.json())
        .then(json => {
            let user = json[0]
            document.getElementById("username").innerHTML ="<b>Welcome</b> "+ user.name;
            document.getElementById("Address1").innerHTML ="<b>City: </b>"+ user.city
            document.getElementById("Address2").innerHTML ="<b>Street: </b>"+ user.street
            document.getElementById("Telephone").innerHTML="<b>Telephone: </b>"+ user.telephone
            document.getElementById("Email").innerHTML ="<b>Email: </b>"+user.email
        })
        .catch(err => console.log(err));
}

// Flotta lekéreés
document.getElementById("profile-tab").onclick= function(e) {
    e.preventDefault();
    const url = 'http://localhost:5050/fleet';
    const table = document.getElementById("cars")
    const token = 'Bearer: ' + sessionStorage.token
    fetch(url, {
        method: 'GET',
        headers: {
            'Authorization': token
        }
    })
        .then((response) => response.json())
        .then(json => {
            table.innerHTML = "<tr><th>Vendor</th><th>Type</th><th>License Plate</th><th>VIN Number</th><th>Fuel</th><th>Power</th><th>Delete</th><th>Book service</th></tr>";
            json.forEach(car => {
                table.innerHTML += "<tr><td>" + car.vendor + "</td><td>" + car.Type + "</td>"
                    + "</td><td>" + car.LicensePlate + "</td><td>" + car.VIN_number + "</td><td>" + car.Fuel + "</td><td>" + car.Power + "</td>"
                    + '<td><button class="button btn btn-danger text-white" '
                    + 'onclick="deletecar('+ car.carId + ')">Delete</button></td>'
                    + '<td><button class="button btn btn-success text-white" '
                    + 'onclick="servicecar('+ car.carId + ')">Book an appoitment</button></td></tr>'
            });
        })
        .catch(err => console.log(err));
}


// Autó  hozzáadása
document.getElementById("buttonCar").onclick= function(e) {
    e.preventDefault();
    const url = 'http://localhost:5050/addcar';
    const token = 'Bearer: ' + sessionStorage.token
    fetch(url, {
        method: 'POST',
        headers: {
            'Content-type': 'application/json;charset=utf-8',
            'Authorization': token
        },
        body: JSON.stringify({
            "vendor": document.getElementById("vendor").value,
            "Type": document.getElementById("Type").value,
            "LicensePlate": document.getElementById("LicensePlate").value,
            "VIN_number": document.getElementById("VIN_number").value,
            "Fuel":document.getElementById("Fuel").value,
            "CubicCapacity":document.getElementById("CubicCapacity").value,
            "Power":document.getElementById("Power").value
        })
    })
        .then((response) => {
            return response.json()
        })
       
        
        .catch(err => console.log(err));
        document.getElementById("addCarForm").reset();
}

// Törölni az autót a flottából
function deletecar(carId) {
    if (confirm("Are you sure to delete this car from your Fleet?")) {
        deleteservice(carId);
        fetch('http://localhost:5050/fleet/deletecar/' + carId, {
            method: 'DELETE',
            headers: {
                'Authorization': token
            }
        })
            .then(res => {
                document.location = "user.html"
            })
            .catch(err => console.log(err));
    }
}

function deleteservice(carId) {
        fetch('http://localhost:5050/fleet/deleteservice/' + carId, {
            method: 'DELETE',
            
        })
            .then(res => {
            })
            .catch(err => console.log(err));
}


// Szervizbe egy találkozó regisztrálása
function servicecar(carId) {
    const token = 'Bearer: ' + sessionStorage.token
    if (confirm("Are you sure to book an service appoitment for this car?")) {
        fetch('http://localhost:5050/service/' + carId, {
            method: 'POST',
            headers: {
                
                'Authorization': token
            }
           
        })
            .then(res => {
                alert("Service appoitment registrated");
            })
            .catch(err => console.log(err));
    }
}


// Szerviz bejegyzésekhez rendszám választás ( autó )

document.getElementById("profile-tab2").onclick= function (e) {
    e.preventDefault;
    const url = 'http://localhost:5050/history';
    const select = document.getElementById("historyPlate");
    select.innerHTML="";
    const token = 'Bearer: ' + sessionStorage.token
    fetch(url, {
        method: 'GET',
        headers: {
            'Content-type': 'application/json;charset=utf-8',
            'Authorization': token
        }
    })
        .then((response) => response.json())
        .then(json => {
            json.forEach(car => {
                i=0;
                select.innerHTML += "<option value="+ car.carId +">"+ car.LicensePlate+"</option>"
                    
            });
        })
        .catch(err => console.log(err));
}


// Szerviz történet lekérés rednszám alapján

document.getElementById("btnHistory").onclick= function(e) {
    e.preventDefault();
    const url = 'http://localhost:5050/history/car';
    const table = document.getElementById("History");
    const token = 'Bearer: ' + sessionStorage.token
    fetch(url, {
        method: 'POST',
        headers: {
            'Content-type': 'application/json;charset=utf-8',
            'Authorization': token
        },
        body: JSON.stringify({
            "historyPlate": document.getElementById("historyPlate").value
            
        })
    })
        .then((response) => response.json())
        .then(json => {
            table.innerHTML = "<tr><th>Date</th><th>Mileage</th><th>history ID</th><th>Vendor</th><th>Type</th><th>License Plate</th><th>Job Type</th>"
                            + "<th>Workhours</th><th>Problem</th><th>Resolution</th><th>Mechanic</th><th>Parts</th><th>Total</th></tr>";
            json.forEach(history => {
                table.innerHTML += "<tr><td>" + history.dateStart + "</td><td>" + history.mileage + "</td><td>" + history.ticketId + "</td><td>" + history.vendor + "</td><td>" + history.type + "</td><td>" + history.Licenseplate + "</td>"
                + "<td>" + history.jobType + "</td><td>" + history.workhours + "</td><td>" + history.problem + "</td><td>" +history.jobDone + "</td><td>" + history.mechanic + "</td>"
                + "<td>" + history.parts + "</td><td>" + history.totalSum + "</td></tr>"
            });
        })
        .catch(err => console.log(err));
}


function logout() {
    delete sessionStorage.token;
    document.location = "login.html";
  }


