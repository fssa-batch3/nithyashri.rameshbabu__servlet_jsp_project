<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="./assets/css/doctordetail.css">
</head>
<style>

input[type="date"],
select {
  width: 100%;
  padding: 10px;
  margin-bottom: 10px;
  border: none;
  border-radius: 3px;
  box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.1);
}

</style>
<body>
    <jsp:include page="header.jsp"></jsp:include>
    <div class="main-wrapper">
        <div class="container">
            <div class="product-div">
                <div class="product-div-left">
                    <div class="img-container">
                        <img id="img" alt="watch">
                    </div>
                </div>
                <div class="product-div-right">
                    <span id="name" class="doctor-name"></span>
                    <span id="edu" class="doctor-price"></span>
                              <div class="btn-groups">
                     <input type="date" class="date" id="date" max="YYYY-MM-DD">
                    </div>
                    <span id="rate" class="doctor-hos"></span>
                    <p class="doctor-description" id="para"></p>
          
                </div>
            </div>
        </div>
    </div>

<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
 <script src="<%= request.getContextPath() %>/assets/js/docDetails.js"></script>


    <!-- <script src="../components/header.js"></script>
    <script src="../assets/js/script.js"></script>
    <script>
        function profile() {
            window.location.href = "./userprofile.html";
        }
    </script>
    <script>
        nav_head();
    </script> -->


</body>

</html>