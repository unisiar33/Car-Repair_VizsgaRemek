
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
            document.getElementById("username").innerHTML ="Welcome "+ user.name;
            document.getElementById("Address1").innerHTML ="City: "+ user.city
            document.getElementById("Address2").innerHTML ="Street: "+ user.street
            document.getElementById("Telephone").innerHTML="Telephone: "+ user.telephone
            document.getElementById("Email").innerHTML ="Email: "+user.email
        })
        .catch(err => console.log(err));
}


document.getElementById("addCar").onclick = function (e) {
    e.preventDefault();
    let ok = false
    const url = 'http://localhost:5050/fleet';
    fetch(url, {
        method: 'POST',
        headers: {
            'Content-type': 'application/json;charset=utf-8',
            'Authorization': token
        },
        body: JSON.stringify({
            "userid": user.userid,
            "Vendor": document.getElementById("vendor").value,
            "Type": document.getElementById("Type").value,
            "Licenseplate": document.getElementById("Licenseplate").value,
            "VinNumber": document.getElementById("Vinnumber").value,
            "Fuel":document.getElementById("Fuel").value,
            "CubicCapacity":document.getElementById("CubicCapacity").value,
            "Power":document.getElementById("Power").value
        })
    })
        .then((response) => {
            ok = response.ok
            return response.json()    
        })
        
        .catch(err => console.log(err));
}


function logout() {
    delete sessionStorage.token;
    document.location = "index.html";
  }


