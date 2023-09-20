<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- font awesome link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <!-- Link css -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/doctor0.css">
    
</head>

<body>

     <jsp:include page="header.jsp"></jsp:include>
    
    
    <!-- section starts -->
    <section class="home" id="home">
        <div class="pic">
            <img src="<%=request.getContextPath()%>/assets/images/medical.png" alt="firstpic">
        </div>
        <div class="content">
            <h3>Not sure which doctor to consult?</h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Rem sed autem vero? Magnam, est laboriosam!</p>
            <a href="../index.html" class="btn">Know more details on specialities<span
                    class="fas fa-chevron-right"></span> </a>
        </div>
    </section>
    <!-- section ends -->

    <section class="doctors" id="doctors">

        <h1 class="heading"> our <span>Specialities</span> </h1>

        <div class="box-container">

            <div class="box">
                <img class="img1" src="./assets/images/specialities_1__2_-removebg-preview.png" alt="">
                <div class="share">
                    <a href="../Pages/services.html" class="fab fa-blogger-b"></a>
                    <a href="../Pages/doctor.html" class="fa fa-user-md"></a>
                </div>
            </div>

            <div class="box">
                <img class="img1" src="./assets/images/specialities_ortho-removebg-preview.png" alt="">
                <div class="share">
                    <a href="../Pages/services.html" class="fab fa-blogger-b"></a>
                    <a href="../Pages/doctor.html" class="fa fa-user-md"></a>
                </div>
            </div>

            <div class="box">
                <img class="img1" src="./assets/images/specialities_8-removebg-preview.png" alt="">
                <div class="share">
                    <a href="../Pages/services.html" class="fab fa-blogger-b"></a>
                    <a href="../Pages/doctor.html" class="fa fa-user-md"></a>
                </div>
            </div>
        </div>
    </section>

    <section class="doctors" id="doctors">

        <h1 class="heading"> our <span> Super Specialities</span> </h1>

        <div class="box-container">

            <div class="box">
                <img class="img1" src="./assets/images/specialities_1__2_-removebg-preview.png" alt="">
                <div class="share">
                    <a href="../Pages/services.html" class="fab fa-blogger-b"></a>
                    <a href="../Pages/doctor.html" class="fa fa-user-md"></a>
                </div>
            </div>

            <div class="box">
                <img class="img1" src="./assets/images/specialities_ortho-removebg-preview.png" alt="">
                <div class="share">
                    <a href="../Pages/services.html" class="fab fa-blogger-b"></a>
                    <a href="../Pages/doctor.html" class="fa fa-user-md"></a>
                </div>
            </div>

            <div class="box">
                <img class="img1" src="./assets/images/specialities_8-removebg-preview.png" alt="">
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






    <script src="<%=request.getContextPath()%>/assets/js/script.js">
    </script>
    <script>
        function profile() {
            window.location.href = "./userprofile.html"
        }
    </script>

    <script src="<%=request.getContextPath()%>/components/header.js">
    </script>
    <script>
        nav_head()
    </script>
</body>

</html>