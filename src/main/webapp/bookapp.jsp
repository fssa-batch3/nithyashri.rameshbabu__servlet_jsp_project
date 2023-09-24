<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link rel="stylesheet" href="./assets/css/bookapp.css">
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>

	<section class="doctors" id="doctors">
		<!-- <div class="divone">

            <h1 class="heading"> In<span> Clinic appointment</span> </h1>

            <div class="box-container">

                <div class="box">
                    <img id="imageone" class="img1"
                        src="https://imagesx.practo.com/providers/dr-karunesh-kumar-h-s-general-physician-bangalore-6ebfa449-9f1a-460c-9122-a4f45cfb4663.jpg?i_type=t_100x100-2x"
                        alt="">
                    <div class="share">
                        <h1 id="h1">Dr Vijayan</h1>
                        <h2 id="h2">Gynecologist</h2>
                        <p id="p">Vijaya Hospital</p>
                    </div>
                </div>

            </div>
            <div class="box-container">

                <div class="box">
                    <img id="imagetwo" class="img1"
                        src="https://images1-fabric.practo.com/practices/1414953/vriksh-fertility-bangalore-63fc83633def0.jpg"
                        alt="">
                    <div class="share">
                        <h1 id="htwo">Cloud hospital</h1>
                        <h2 id="hthree">Bannergha Main Road, Bangalore</h2>
                    </div>
                </div>

            </div>

        </div> -->
	</section>


	<!-- Appointment form -->
	<div class="container">
		<h1>Patient details</h1>

	<form id="form" action = "./AppointmentServlet" method = "POST">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" pattern="[A-Za-z]{1,15}" required>

    <label for="email">Email:</label>
    <input type="email" id="email" name="email" required>

    <label for="phone">Phone:</label>
    <input type="text" id="phone" name="phone" required>
   <input type = "hidden" id = "user" name = "userid">
    <input type = "hidden" id = "doc" name = "docid">
    <label for="date">Date:</label>
    <input type="date" id="date" name="date" readonly onfocus="showMessage()">
   <label for="time">Slot time</label>
    <input type="text" id="time" name="time" readonly onfocus="showMessage()">
			<button type="submit" id="submit"
				value="Submit">Submit</button>
		</form>

	</div>
	<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/js/appointmentbooking.js"></script>











	<script src="../assets/js/script.js">
		
	</script>
	<script>
		function profile() {
			window.location.href = "./userprofile.html"
		}
	</script>
	<script src="../components/header.js">
		
	</script>
	<script>
		nav_head()
	</script>
</body>

</html>