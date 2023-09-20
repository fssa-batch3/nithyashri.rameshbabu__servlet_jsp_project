<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../assets/css/successdoctor.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <!-- Link css -->
</head>

<body>
    <header class="header" id="docheader">

    </header>

    <!-- section starts -->
    <section class="home" id="home">
        <div class="pic">
            <img src="../assets/images/guardian-angel-gdec27b4de_1920-removebg-preview.png" alt="firstpic">
        </div>
        <div class="content">
            <h3>Patients are looking for doctors like you</h3>
            <p>Millions of patients are looking for the right doctor on Mgood. Start your digital journey with Mgood
                Profile</p>

        </div>
    </section>
    <!-- section ends -->

    <section class="doctors" id="doctors">

        <a id="app">
            <h1 class="heading"> Check <span>Appointment</span> </h1>
        </a>

        <div class="box-container">

            <div class="box">
                <img class="img1" src="../assets/images/specialities_1__2_-removebg-preview.png" alt="">
                <div class="share">
                    <a href="../Pages/services.html" class="fab fa-blogger-b"></a>
                    <a href="../Pages/doctor.html" class="fa fa-user-md"></a>
                </div>
            </div>

            <div class="box">
                <img class="img1" src="../assets/images/specialities_ortho-removebg-preview.png" alt="">
                <div class="share">
                    <a href="../Pages/services.html" class="fab fa-blogger-b"></a>
                    <a href="../Pages/doctor.html" class="fa fa-user-md"></a>
                </div>
            </div>

            <div class="box">
                <img class="img1" src="../assets/images/specialities_8-removebg-preview.png" alt="">
                <div class="share">
                    <a href="../Pages/services.html" class="fab fa-blogger-b"></a>
                    <a href="../Pages/doctor.html" class="fa fa-user-md"></a>
                </div>
            </div>
        </div>
    </section>

    <section class="doctors" id="doctors">

        <h1 class="heading"> Create <span> Blogs</span> </h1>

        <div class="box-container">

            <div class="box">
                <img class="img1" src="../assets/images/specialities_1__2_-removebg-preview.png" alt="">
                <div class="share">
                    <a href="../Pages/services.html" class="fab fa-blogger-b"></a>
                    <a href="../Pages/doctor.html" class="fa fa-user-md"></a>
                </div>
            </div>

            <div class="box">
                <img class="img1" src="../assets/images/specialities_ortho-removebg-preview.png" alt="">
                <div class="share">
                    <a href="../Pages/services.html" class="fab fa-blogger-b"></a>
                    <a href="../Pages/doctor.html" class="fa fa-user-md"></a>
                </div>
            </div>

            <div class="box">
                <img class="img1" src="../assets/images/specialities_8-removebg-preview.png" alt="">
                <div class="share">
                    <a href="../Pages/services.html" class="fab fa-blogger-b"></a>
                    <a href="../Pages/doctor.html" class="fa fa-user-md"></a>
                </div>
            </div>
        </div>
    </section>


    <footer class="footer">
        <div class="container">
            <div class="rows">
                <div class="footer-col">
                    <h4>Home</h4>
                    <ul>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Ratings</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h4>Services</h4>
                    <ul>
                        <li><a href="#">Doctors</a></li>
                        <li><a href="#">Specialist</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h4>Blogs</h4>
                    <ul>
                        <li><a href="#">consult</a></li>
                        <li><a href="#">packages</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h4>Follow Us</h4>
                    <div class="share">
                        <a href="#" class="fab fa-youtube"></a>
                    </div>
                </div>
            </div>
        </div>



    </footer>
    
    <script>
        let app = document.getElementById("app")
        app.setAttribute("href", "")
    </script>


    <script>
        function docprofile() {
            window.location.href = "./doctorprofile.html"
        }
    </script>

    <script src="../components/docheader.js">
    </script>
    <script>
        docnav_head()
    </script>



</body>

</html>