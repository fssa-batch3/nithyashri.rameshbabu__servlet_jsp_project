window.onload = function() {
    let details_url = window.location.search;
    let urlparams = new URLSearchParams(details_url);
    let geturl = urlparams.get("doctor_email");
    console.log(geturl);

    const url = "/mgoodapp/GetAllViewAppJsonServlet";
    axios.get(url)
        .then(function(response) {
            const apparray = response.data;
            console.log(apparray);

            // Loop through each appointment in apparray
            for (let i = 0; i < apparray.length; i++) {
                const app_detail = apparray[i];
                if (app_detail.doctor.email == geturl) {
                    // Create a card element for each appointment
                    const card = document.createElement("div");
                    card.setAttribute("class", "card");
                    card.innerHTML = `<h1>Appointment Confirmation</h1>
                        <div class="appointment-details">
                            <p>Patient Name: ${app_detail.user.name} </p>
                            <p>Patient Mail: ${app_detail.user.email} </p>
                            <p>Patient Ph-no: ${app_detail.user.phone} </p>
                        </div>
                        <div class="date-time">
                            <p><b>Date:</b> ${app_detail.slotdate}</p><br>
                            <p><b>Time:</b> ${app_detail.time}</p>
                        </div>`;

                    // Append the card to the ".main" element
                    document.querySelector(".main").appendChild(card);
                }
            }
        })
        .catch(function(error) {
            console.log(error);
        });
};
