document.getElementById("button").onclick = function (e) {
    e.preventDefault();
    let ok = false
    const url = 'http://localhost:5050/login';
    fetch(url, {
        method: 'POST',
        headers: {
            'Content-type': 'application/json;charset=utf-8'
        },
        body: JSON.stringify({
            "name": document.getElementById("name").value,
            "password": document.getElementById("password").value
        })
    })
        .then((response) => {
            ok = response.ok
            return response.json()    
        })
       
        .then(json => {
            sessionStorage.token = json.token
            document.getElementById("uzenet").innerHTML = json.message;
            if (ok){
                if (document.getElementById("name").value=="Admin") document.location = "admin.html";
                else document.location="user.html";
            }
            
        })
        .catch(err => console.log(err));
}
