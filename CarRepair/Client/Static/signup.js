document.getElementById("button").onclick  = function (e) {
    e.preventDefault();
    const url = 'http://localhost:5050/reg';
    fetch(url, {
        method: 'POST',
        headers: {
            'Content-type': 'application/json;charset=utf-8'
        },
        body: JSON.stringify({
            "name": document.getElementById("name").value,
            "city": document.getElementById("city").value,
            "street": document.getElementById("street").value,
            "email": document.getElementById("email").value,
            "telephone": document.getElementById("telephone").value, 
            "password": document.getElementById("password").value
        })
    })
        
        .then((response) => {
            ok = response.ok
            return response.json()    
        })
        .then(json => {
            document.getElementById("uzenet").innerHTML = json.message
            if (ok) document.location = "success.html"
        })
        .catch(err => console.log(err));
      
}

