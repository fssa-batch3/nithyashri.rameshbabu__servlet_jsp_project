<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="../assets/css/bookapp.css">
</head>

<body>
    <header class="header" id="header">

    </header>


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

        <form ID="form">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" pattern="[A-Za-z]{1,15}" required>
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>
            <label for="phone">Phone:</label>
            <input type="text" id="phone" name="phone" required>
            <label for="date">Date:</label>
            <input type="date" id="date" name="date" required>
            <!-- <label for="time">Time:</label> -->
            <!-- <select id="time" name="time" required>
                <option value="">Select a time</option>
                <option value="morning">Morning</option>
                <option value="afternoon">Afternoon</option>
                <option value="evening">Evening</option>
            </select> -->
            <label for="phone">This in-clinic appointment is for:</label>
            <select id="app_for" name="time" required>
                <option>Myself</option>
                <option>Someone else</option>
            </select>



            <button onclick="sendemail()" type="submit" id="submit" value="Submit">Submit</button>
        </form>

    </div>

    <script>

        let urlparam = window.location.search
        let param = new URLSearchParams(urlparam)
        const getparam = param.get("doc_id")
        console.log(getparam)

        let object = JSON.parse(window.localStorage.getItem("doctor"))
        console.log(object)

        let doctor_detail = object.find(function (details) {
            let Doc_id = details["doctor_id"]
            if (Doc_id == getparam) {
                return true;
            }
        })
        console.log(doctor_detail)


        // console.log(doctor_detail["doctorendtime"])

        // let appointmenttime = JSON.parse(localStorage.getItem("timeslotid"))

        // console.log(appointmenttime)
        // const startHour = parseInt(appointmenttime.split(":")[0]);
        // const endHour = parseInt(appointmenttime.split(":")[1]);

        let docSlotDetails = " "


        let box = document.createElement("div")
        box.setAttribute("class", "divone")
        box.innerHTML = ` <h1 class="heading"> In<span> Clinic appointment</span> </h1>

<div class="box-container">

    <div class="box">
        <img id="imageone" class="img1"
            src= ${doctor_detail["doctor_img"]}
        alt = "" >
            <div class="share">
                <h1 id="h1"> ${doctor_detail["name"]}</h1>
                <h2 id="h2"> ${doctor_detail["hosname"]}</h2>
                <p id="p"> ${doctor_detail["special"]}</p >
            </div >
    </div >

</div >
            <div class="box-container">

                <div class="box">
                    <img id="imagetwo" class="img1"
                        src=${doctor_detail["hosimg"]}
                        alt="">
                        <div class="share">
                            <h1 id="htwo">${doctor_detail["hosname"]}</h1>
                            <h2 id="hthree">${doctor_detail["hosadd"]}</h2>
                        </div>
                </div>

            </div>`
        document.querySelector(".doctors").append(box)

        let submit = document.getElementById("form")

        submit.addEventListener("submit", function (event) {
            event.preventDefault()





            let bookname = document.getElementById("name").value
            let bookemail = document.getElementById("email").value.toLowerCase();
            let bookphn = document.getElementById("phone").value
            let bookdte = document.getElementById("date").value
            let bookfor = document.getElementById("app_for").value
            let docname = doctor_detail["name"]
            let docspl = doctor_detail["special"]
            let docmail = doctor_detail["email"]




            let bookobj = {
                appname: bookname,
                appemail: bookemail,
                appphn: bookphn,
                appdte: bookdte,
                appfor: bookfor,
                docname: docname,
                docspl: docspl,
                docmail: docmail


            }
            const url = window.location.search;
            const url_params = new URLSearchParams(url)
            const get_id = url_params.get("appids")
            console.log(get_id)
            let appointment_details = JSON.parse(localStorage.getItem("appointmentdetails"))
            console.log(appointment_details)
            let findapp = appointment_details.find(function (event) {
                let find = event["appid"]
                if (find == get_id) {
                    return true;
                }
            })
            console.log(findapp)
            let check_obj = Object.assign(findapp, bookobj)
            console.log(check_obj)

            let index = appointment_details.indexOf(findapp)
            console.log(index);

            appointment_details[index] = check_obj

            localStorage.setItem("appointmentdetails", JSON.stringify(appointment_details))

            alert("Booked Successfully")
            // window.location.href = "./doceducation.html?doctorid=" + findapp["doctor_id"]



        })









    </script>












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