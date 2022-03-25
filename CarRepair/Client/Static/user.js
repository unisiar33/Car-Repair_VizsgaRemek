
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


document.getElementById("profile-tab").onclick= function(e) {
    e.preventDefault();
    const url = 'http://localhost:5050/fleet';
    const table = document.getElementById("cars");
    const token = 'Bearer: ' + sessionStorage.token
    fetch(url, {
        method: 'GET',
        headers: {
            'Authorization': token
        }
    })
        .then((response) => response.json())
        .then(json => {
            table.innerHTML = "<tr><th>Vendor</th><th>Type</th><th>License Plate</th><th>VIN Number</th><th>Fuel</th><th>Power</th><th>Delete</th></tr>";
            json.forEach(car => {
                table.innerHTML += "<tr><td>" + car.vendor + "</td><td>" + car.Type + "</td>"
                    + "</td><td>" + car.LicensePlate + "</td><td>" + car.VIN_number + "</td><td>" + car.Fuel + "</td><td>" + car.Power + "</td>"
                    + '<td><button class="button btn btn-danger text-white" '
                    + 'onclick="torol()">Delete</button></td></tr>'
            });
        })
        .catch(err => console.log(err));
}



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


function logout() {
    delete sessionStorage.token;
    document.location = "index.html";
  }


