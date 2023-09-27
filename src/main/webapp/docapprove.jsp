<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./assets/css/docapproval.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
</head>
<style>
.pop{
	margin-top:60px;
}
.btn{
margin-left:110px;
 padding: 10px;
  margin-bottom: 10px;
  background-color: #32928b;
  border-radius: 3px;
  color:white;
  cursor: pointer;
  border:none;
}

</style>
<body>
	<jsp:include page="header.jsp"></jsp:include>
    <div class="pop">
        <div class="popup">
		<h1 id="namedoctor"></h1>
        </div>
    </div>

     <%
    String doctorname = request.getParameter("doctorname");
    String email = request.getParameter("email");
    %>   

<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>


        <script>
      
        let doctorname = "<%=doctorname%>";
        console.log(doctorname);
        let email = "<%=email%>";

        let centerbox = document.createElement("div");
        centerbox.setAttribute("class", "popup");
        centerbox.innerHTML = ` 
      
            <p>Thank you for submitting your information and credentials for approval. We appreciate your interest in
                joining our esteemed medical team. Please note that your application is currently being reviewed by our
                administrative team, and we kindly ask for your patience during this process.</p>
            <p>Once your application has been thoroughly assessed, we will reach out to you via the contact details
                provided in your submission. In the meantime, feel free to explore our website to learn more about our
                organization, services, and values.</p>
            <p>Thank you again for your interest in joining our team. We look forward to potentially working with you
                and making a positive impact on the health and well-being of our patients.</p> 
            <button class="btn" onclick="checkstatus()">Check status</button>
        `;
        document.querySelector(".popup").append(centerbox);

        // Set the inner text of namedoctor
        document.getElementById("namedoctor").innerText = "Dr. " + doctorname;

        function checkstatus() {
            const url = "/mgoodapp/ViewDoctorServvlet";
            axios.get(url)
                .then(function (response) {
                    const docarray = response.data;
                    let finddoctor = docarray.find((e) => e.email === email);
                    console.log(finddoctor);
                    if (finddoctor && finddoctor["confirmation"] === "approved") {
                    	   alert("Your application has been approved by the admin. Login now");
                        window.location.href = "./doclog.jsp";
                    }
                    else if (finddoctor && finddoctor["confirmation"] === "pending") {
                        alert("Your application is still under review. Please be patient.");
                       
                    }
                    else {
                        alert("Unfortunately, your application has been declined. Sign in with valid information.");
                        window.location.href = "./docsign.jsp";
          
                    }
                })
                .catch(function (error) {
                    console.log(error);
                });
        }
    </script>
</body>

</html>