// Const
const token = 'Bearer: ' + sessionStorage.token
load();
loadhistory();

//Élő munkalapok betöltése

function load () {
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
                  + 'onclick="deleteticket('+ ticket.ticketId + ')">Delete</button></td></tr>'
          });
      })
      .catch(err => console.log(err));
    }

// Worksheet kitöltése 

document.getElementById("buttonTicket").onclick= function(e) {
    e.preventDefault();
    if (confirm("Are you sure about everything is filled?")) {
    const url = 'http://localhost:5050/worksheet';
    const token = 'Bearer: ' + sessionStorage.token
    fetch(url, {
        method: 'POST',
        headers: {
            'Content-type': 'application/json;charset=utf-8',
            'Authorization': token
        },
        body: JSON.stringify({
            "Ticketnumber": document.getElementById("Ticketnumber").value,
            "startDate": document.getElementById("startDate").value,
            "endDate": document.getElementById("endDate").value,
            "Workhour": document.getElementById("Workhour").value,
            "jobType":document.getElementById("jobType").value,
            "Mileage":document.getElementById("Mileage").value,
            "Technician":document.getElementById("Technician").value,
            "Problem":document.getElementById("Problem").value,
            "Job":document.getElementById("Job").value,
            "Parts":document.getElementById("Parts").value,
            "Total_Charge":document.getElementById("Total_Charge").value
        })
        
    })
        .then((response) => {
            return response.json()
        })
       
        
        .catch(err => console.log(err));
        document.getElementById("worksheetForm").reset();
        alert("Worksheet has been filled out. Job status has changed to done! ");
        load();
        loadhistory();
    }
}


//Összes munkalapok betöltése

function loadhistory () {
    const url = 'http://localhost:5050/servicehistory';
    const table = document.getElementById("historytable")
    const token = 'Bearer: ' + sessionStorage.token
    fetch(url, {
        method: 'GET',
        headers: {
            'Authorization': token
        }
    })
        .then((response) => response.json())
        .then(json => {
            table.innerHTML = "<tr><th>Ticket ID</th><th>Name</th><th>Job Type</th><th>Vendor</th><th>Type</th><th>License Plate</th>"
                             +"<th>Mileage</th><th>Date</th><th>Workhours</th><th>Problem</th><th>Resolution</th><th>Mechanic</th><th>Parts</th><th>Total</th></tr>"
            json.forEach(ticket => {
                table.innerHTML += "<tr><td>" + ticket.ticketId + "</td><td>" + ticket.name + "</td>"
                    + "<td>" + ticket.jobType + "</td><td>" + ticket.vendor + "</td><td>" + ticket.type + "</td><td>" + ticket.Licenseplate + "</td>"
                    + "</td><td>" + ticket.mileage + "</td><td>" + ticket.dateStart + "</td><td>" + ticket.workhours + "</td><td>" + ticket.problem + "</td><td>" +ticket.jobDone + "</td>"
                    + "</td><td>" + ticket.mechanic + "</td><td>" + ticket.parts + "</td><td>" + ticket.totalSum + "</td></tr>"
            });
        })
        .catch(err => console.log(err));
      }




//Ticket törlése

function deleteticket(ticketId){
        fetch('http://localhost:5050/fleet/deleteticket/' + ticketId, {
            method: 'DELETE',
            
        })
            .then(res => {
            })
            .catch(err => console.log(err));
            load();
}



//Logout funkció


function logout() {
    delete sessionStorage.token;
    document.location = "login.html";
}