<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/verifieddoctor.css">
</head>
<style>
@import url("https://fonts.googleapis.com/css2?family=Outfit:wght@100&family=Poppins:wght@100;300;400;500;700&display=swap");
:root {
  --aqua: rgb(17, 163, 163);
  --black: #444;
  --light-color: #777;
  --box-shadow: 0.5rem 0.5rem 0 rgb(17, 163, 163);
  --text-shadow: 0.4rem 0.4rem 0 rgba(0, 0, 0, 0.2);
  --border: 0.2rem solid var(--green);
}
* {
  font-family: "Poppins", sans-serif;
  margin: 0;
  padding: 0;
  text-decoration: none;
  text-transform: capitalize;
  outline: none;
  box-sizing: border-box;
  transition: all 0.2s ease-out;
}

html {
  font-size: 62.5%;
  overflow-x: hidden;
}
.header {
  padding: 2rem 9%;
  top: 0%;
  left: 0%;
  right: 0%;
  z-index: 1000;
  box-shadow: 0 0.5rem 1.5rem rgba(0, 0, 0, 0.1);
  display: flex;
  align-items: center;
  justify-content: space-between;
  background: #fff;
  position: fixed;
}
.header .logo {
  font-size: 2.6rem;
  color: var(--black);
  font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
}
.header .logo i {
  color: var(--aqua);
}
.header .navbar a {
  font-size: 1.7rem;
  color: var(--light-color);
  margin-left: 2rem;
}

.header .navbar a:hover {
  color: var(--aqua);
}
#menu-btn {
  font-size: 2.5rem;
  border-radius: 0.5rem;
  background: #eee;
  color: var(--blue);
  padding: 1rem 1.5rem;
  cursor: pointer;
  display: none;
}
</style>
<body>
    <header class="header">
        <a href="#" class="logo"> <i class="fas fa-heartbeat"></i>MGOOD</a>

        <nav class="navbar">
            <a href="./adminpage.jsp">Home</a>
             <a href="./approvedoc1.jsp">Doctors</a>
            <a href="./verifireddoctors.jsp">Verified doctors</a>
           
        </nav>
        <div id="menu-btn" class="fas fa-bars"></div>
    </header>
    <h2>Verified doctors</h2>
    <table class="tabs">
        <table class="tab">
            <thead class="head">
                <tr>
                    <th>Doctor image</th>
                    <th>Name</th>
                    <th>Specialization</th>
                    <th>Hospital name</th>
                    <th>Approved</th>
                </tr>
            </thead>
            <!-- <tbody> -->
            <!-- <tr>
                    <td><img class="mgooddoc"
                            src="https://imagesx.practo.com/providers/dr-vidyamani-boriah-obstetrician-bangalore-f2d8ce30-bff6-4618-b993-05835697ffd3.jpg?i_type=t_100x100-2x">
                    </td>
                    <td>Dr. John Smith</td>
                    <td>Cardiology</td>
                    <td>Vijaya hospital</td>
                    <td>Verified</td>
                </tr>  -->

            <!-- </tbody> -->
        </table>
    </table>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <script src="<%=request.getContextPath() %>/assets/js/VerifiedDoctors.js"></script>

</body>

</html>