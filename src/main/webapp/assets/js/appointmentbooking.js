
    
    window.onload = function () {
        const urlParams = new URLSearchParams(window.location.search);
        const slot = urlParams.get("slot");
        const date = urlParams.get("date");
        const docId = urlParams.get("doc_id");
        const userId = urlParams.get("user_id");

        // Define the URLs for the two AJAX requests
        const profileUrl = "./ProfileServlet";
        const doctorUrl = "/mgoodapp/ViewDoctorServvlet";

        // Create an array of Axios promises
        const axiosPromises = [
            axios.get(profileUrl),
            axios.get(doctorUrl)
        ];

        // Use axios.all to make both requests in parallel
        axios.all(axiosPromises)
            .then(axios.spread(function (profileResponse, doctorResponse) {
                const profileData = profileResponse.data;
                const docarray = doctorResponse.data;

                // Log the data for debugging
                console.log("Profile Data:", profileData);
                console.log("Doctor Data:", docarray);
               
                // Now you can access the properties of the UserModel as an object
                document.getElementById("name").value = profileData.name;
                document.getElementById("email").value = profileData.email;
                document.getElementById("phone").value = profileData.phone;
                document.getElementById("time").value = slot;
                document.getElementById("date").value = date;
                document.getElementById("user").value = userId;
                document.getElementById("doc").value = docId;

                // Process the doctor data and call the displaydoctors function
            
        
                let doctor_detail = docarray.find((e) => e.doctorId === parseInt(docId));
                console.log(doctor_detail);         
        let box = document.createElement("div")
        box.setAttribute("class", "divone")
        box.innerHTML = ` <h1 class="heading"> In<span> Clinic appointment</span> </h1>

<div class="box-container">

    <div class="box">
        <img id="imageone" class="img1"
            src= ${doctor_detail["doctorImg"]}
        alt = "" >
            <div class="share">
                <h1 id="h1"> ${doctor_detail["name"]}</h1>
                <h2 id="h2"> ${doctor_detail["degree"]}</h2>
                <p id="p"> ${doctor_detail["specialization"]}</p >
            </div >
    </div >

</div >
            <div class="box-container">

                <div class="box">
                    <img id="imagetwo" class="img1"
                        src=${doctor_detail["clinicImg"]}
                        alt="">
                        <div class="share">
                            <h1 id="htwo">${doctor_detail["clinicalName"]}</h1>
                            <h2 id="hthree">${doctor_detail["clinicalAddress"]}</h2>
                        </div>
                </div>

            </div>`
        document.querySelector(".doctors").append(box)
            }))
            .catch(function (error) {
                console.error('Request failed', error);
            });
            
        function showMessage() {
    alert("You can't edit this field.");
}
    
           

    }

   




