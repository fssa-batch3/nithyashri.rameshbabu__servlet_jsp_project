

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./assets/css/approvedoc1.css">
</head>

<body>
    <header class="header">
        <a href="#" class="logo"> <i class="fas fa-heartbeat"></i>MGOOD</a>

        <nav class="navbar">
            <a href="./adminHealthtest.jsp">Home</a>
            <a href="./approvedoc1.jsp">Doctors</a>
           <a href="./verifieddoctors.jsp">Verified doctors</a>
        </nav>
        <div id="menu-btn" class="fas fa-bars"></div>
    </header>
    
    <div class="info">
</div>
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<script>

	  function getAllDoctors() {
          const url = "/mgoodapp/ViewDoctorServvlet";
          axios.get(url)
              .then(function(response) {
                  const docarray = response.data;
                  console.log(docarray);
                  displaydoctors(docarray);
              })
              .catch(function(error) {
                  console.log(error);
              });
      }

	  function displaydoctors(docarray){
		  
	  
	  
for (let list of docarray) {
    if (list["confirmation"] == "pending") {
        let url = list["doctorId"]
        let box = document.createElement("div")
        box.setAttribute("class", "infocardContainer")

        let main = document.createElement("div")
        main.setAttribute("id", "main")
        box.append(main)

        let img = document.createElement("img")
        img.setAttribute("src", list["doctorImg"])
        img.setAttribute("alt", "doctorimages")
        main.append(img)

        let text = document.createElement("div")
        text.setAttribute("id", "text")
        box.append(text)

        let h2 = document.createElement("h2")
        h2.innerHTML = list["name"]
        text.append(h2)

        let h4 = document.createElement("h4")
        h4.innerHTML = list["specialization"]
        text.append(h4)

        let a = document.createElement("a")
        a.setAttribute("class", "anchor")
        a.setAttribute("href", "./approvedoc2.jsp?doctorid=" + list["doctorId"])
        a.innerHTML = "See the details"
        text.append(a)
        document.querySelector(".info").append(box)
    } 
    
} 

	  }
 window.onload = function() {
            getAllDoctors();
        };


</script>
</body>
</html>
