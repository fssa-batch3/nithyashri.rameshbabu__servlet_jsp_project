<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="../assets/css/doctordetail.css">
</head>

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
                    <span id="rate" class="doctor-hos"></span>
                    <p class="doctor-description" id="para"></p>
                    <div class="btn-groups">
                        <button id="btn" onclick="btn()" class="add-appointment">Book
                            slot</button>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <script>
        let details_url = window.location.search
        let urlparams = new URLSearchParams(details_url)
        let geturl = urlparams.get("doc_id")
        // console.log(geturl);

        /* let doctors = docarray.filter((e) => e.doctorId === geturl); */

        let user_url = window.location.search
        let params = new URLSearchParams(user_url)
        let get_user = params.get("user_id")
        console.log(get_user);

        let details = JSON.parse(window.localStorage.getItem("doctor"))
        console.log(details);


        let appoint = JSON.parse(localStorage.getItem("appointmentdetails"))
        let doc_detail = details.find(function (doc_object) {
            let doc_user = doc_object["doctor_id"]

            if (geturl == doc_user) {
                return true;
            }
        })

        let docdetail;
        for (let i = 0; i < appoint.length; i++) {
            docdetail = appoint.filter(function (doc_object) {
                let doc_user = doc_object["Docid"]
                console.log(doc_user);

                if (geturl == doc_user) {
                    return true;
                }
            })
            console.log(docdetail)
        }



        let images = document.getElementById("img")
        images.setAttribute("src", doc_detail["doctor_img"])
        let name = document.getElementById("name")
        name.innerText = doc_detail["name"]
        let rate = document.getElementById("rate")

        // rate.innerHTML = doc_detail["docslot"]
        let edu = document.getElementById("edu")
        edu.innerText = doc_detail["special"]
        let paras = document.getElementById("para")
        paras.innerText = doc_detail["bio"]




        const startTime = doc_detail["docslot"];
        const endTime = doc_detail["doctorendtime"];

        const startHour = parseInt(startTime.split(":")[0]);
        const endHour = parseInt(endTime.split(":")[0]);
        const doctorID = "1"
        const currentDate = new Date();
        const currentDateString = currentDate.toISOString().slice(0, 10);


        for (let hour = startHour; hour < endHour; hour++) {
            for (let minute = 0; minute < 60; minute += 30) {
                // Calculate the start and end times for the current 30-minute interval
                // if (docdetail[i]["Docid"] == geturl && docdetail[i]["slotID"] == slotID)
                const intervalStart = new Date();
                intervalStart.setHours(hour);
                intervalStart.setMinutes(minute);
                const intervalEnd = new Date(intervalStart);
                intervalEnd.setMinutes(intervalEnd.getMinutes() + 30);

                // Format the start and end times for the current interval
                const startString = intervalStart.toLocaleTimeString([], { timeStyle: "short" });
                const endString = intervalEnd.toLocaleTimeString([], { timeStyle: "short" });
                const slotID = `slot_${currentDateString}_${doctorID}_${startString}-${endString}`;

                // Create a new button element with a unique ID and text content

                const slotBtn = document.createElement("button");

                slotBtn.setAttribute("id", slotID);
                slotBtn.setAttribute("class", "btn");


                slotBtn.setAttribute("onclick", "tym(this.id)")
                slotBtn.innerText = `${startString} - ${endString}`;

                // Append the button to the rate container element
                rate.append(slotBtn);
            }
        }





        function tym(id) {
            window.localStorage.setItem("timeslotid", JSON.stringify(id))
        }

        let bookbtn = document.getElementById("btn")
        bookbtn.addEventListener("click", function (event) {
            let slot = JSON.parse(localStorage.getItem("timeslotid"))
            let arr = []
            let appointmentid = Date.now()
            let slotobj = {
                slotID: slot,
                Docid: doc_detail["doctor_id"],
                appname: "",
                appphn: "",
                appfor: "",
                appdte: "",
                appemail: "",
                appid: appointmentid,
                user_id: getuser
            }
            if (localStorage.getItem("appointmentdetails") !== null) {
                arr = JSON.parse(localStorage.getItem("appointmentdetails"));
            }
            arr.push(slotobj)
            window.localStorage.setItem("appointmentdetails", JSON.stringify(arr))
            window.location.href = "../Pages/bookapp.html?doc_id=" + doc_detail["doctor_id"] + "&appids=" + appointmentid

        })


        console.log(docdetail)

        // if (docdetail[i]["Docid"] == geturl && docdetail[i]["slotID"] == slotID)

        for (let i = 0; i < docdetail.length; i++) {
            let b = document.getElementById(docdetail[i]["slotID"])

            if (b.getAttribute("id") == docdetail[i]["slotID"]) {
                b.style.color = "grey"
                b.disabled = true;
                b.style.cursor = 'not-allowed';
            }
        }






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