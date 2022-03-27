// Const
const token = 'Bearer: ' + sessionStorage.token
load()

function load() {
  const url = 'http://localhost:5050/service';
  const table = document.getElementById("livetickets")
  const token = 'Bearer: ' + sessionStorage.token
  fetch(url, {
      method: 'GET',
      headers: {
          'Authorization': token
      }
  })
      .then((response) => response.json())
      .then(json => {
          table.innerHTML = "<tr><th>Ticket ID</th><th>Name</th><th>Vendor</th><th>Type</th><th>LicensePlate</th><th>VIN_number</th><th>Delete</th></tr>";
          json.forEach(ticket => {
              table.innerHTML += "<tr><td>" + ticket.ticketId + "</td><td>" + ticket.name + "</td>"
                  + "</td><td>" + ticket.vendor + "</td><td>" + ticket.type + "</td><td>" + ticket.Licenseplate + "</td><td>" + ticket.vin_number + "</td>"
                  + '<td><button class="button btn btn-danger text-white" '
                  + 'onclick="deletecar('+ ticket.ticketId + ')">Delete</button></td></tr>'
          });
      })
      .catch(err => console.log(err));
    }

// Worksheet kitöltése 

document.getElementById("buttonTicket").onclick= function(e) {
    e.preventDefault();
    if (confirm("Are you sure about everything is filled?")) {
    const url = 'http://localhost:5050/service/worksheet';
    const token = 'Bearer: ' + sessionStorage.token
    fetch(url, {
        method: 'POST',
        headers: {
            'Content-type': 'application/json;charset=utf-8',
            'Authorization': token
        },
        
    })
        .then((response) => {
            return response.json()
        })
       
        
        .catch(err => console.log(err));
        document.getElementById("worksheetForm").reset();
        alert("Worksheet has been filled out. Job status has changed to done! ")
    }
}

//Logout funkció


function logout() {
    delete sessionStorage.token;
    document.location = "login.html";
}