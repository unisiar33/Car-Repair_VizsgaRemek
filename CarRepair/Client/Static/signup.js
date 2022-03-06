document.getElementById("button").onclick = function (e) {
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
        .then((response) => response.json())
        .then(json => alert(json.message))
        .catch(err => console.log(err));
      
}
