
const token = 'Bearer: ' + sessionStorage.token
betolt()

function betolt() {
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


document.getElementById("buttonCar").onclick= function(e) {
    e.preventDefault();
    const url = 'http://localhost:5050/fleet';
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


