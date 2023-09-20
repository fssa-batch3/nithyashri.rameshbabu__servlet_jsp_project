<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../assets/css/appshow.css">
</head>

<body>
    <header class="header" id="docheader">

    </header>

    <body>
        <div class="main">
            <!-- <div class="card">
                <h1>Appointment Confirmation</h1>
                <div class="appointment-details">
                    <p>Name: John Doe</p>
                    <p>Service: Dental Checkup</p>
                    <p>Provider: Dr. Jane Smith</p>
                </div>
                <div class="date-time">
                    <img src="calendar.png" alt="Calendar icon" width="20">
                    <p>Date: May 20, 2023</p>
                    <p>Time: 2:00 PM</p>
                </div>
                <a href="#" class="btn">Add to Calendar</a>
            </div> -->

        </div>







        <script>

            let geturl = window.location.search
            const url = window.location.search;
            const url_params = new URLSearchParams(url)
            const get_id = url_params.get("docid")

            let details = JSON.parse(localStorage.getItem("appointmentdetails"))

            for (let i = 0; i < details.length; i++) {
                if (get_id == details[i]["Docid"]) {
                    let time = details[i].slotID;
                    console.log(time);
                    const parts = time.split("_");
                    const times = parts[3].split("-");
                    const timeRange = times[0] + "-" + times[1];











                    let card = document.createElement("div")
                    card.setAttribute("class", "card")
                    card.innerHTML = `<h1>Appointment Confirmation</h1>
                <div class="appointment-details">
                    <p>Patient Name: ${details[i].appname} </p>
                    <p>Patient Mail: ${details[i].appemail} </p>
                    <p>Patient Ph-no: ${details[i].appphn} </p>
                    
                </div>
                <div class="date-time">
                    
                    <p><b>Date:</b> ${details[i].appdte}</p><br>
                    <p><b>Time:</b> ${timeRange}</p>
                </div>`
                    // <a href="#" class="btn">Add to Calendar</a>`

                    document.querySelector(".main").append(card)
                }
            }

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