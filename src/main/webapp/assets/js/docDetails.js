    
    window.onload = function() {
        let details_url = window.location.search;
        let urlparams = new URLSearchParams(details_url);
        let geturl = urlparams.get("doc_id");
console.log(geturl);
        

        const url = "/mgoodapp/ViewDoctorServvlet";
        axios.get(url)
            .then(function(response) {
                const docarray = response.data;
                console.log(docarray);
                let doc_detail = docarray.find((e) => e.doctorId === parseInt(geturl));
                console.log(doc_detail);
              displaydoctors(doc_detail);   
            })
            .catch(function(error) {
                console.log(error);
            });
    }


      function updateDateInputValue(value) {
            document.getElementById("date").value = value;
        }

 
    
    
    const currentDate = new Date().toISOString().split('T')[0];
        const oneMonthFromNow = new Date();
        oneMonthFromNow.setMonth(oneMonthFromNow.getMonth() + 1);
        const maxDate = oneMonthFromNow.toISOString().split('T')[0];
         updateDateInputValue(currentDate);
        document.getElementById("date").setAttribute("min", currentDate);
        document.getElementById("date").setAttribute("max", maxDate);
		document.getElementById("date").dispatchEvent(new Event('change'));

         
         
     
     
     let details_url = window.location.search;
     let urlparams = new URLSearchParams(details_url);
     let get_id = urlparams.get("doc_id");
     console.log(get_id);
         
         
         
         
        const dateInput = document.getElementById("date");
dateInput.addEventListener("change", function() {
    const date = dateInput.value;
    console.log(date);
    
    const doctorUrl = "/mgoodapp/ViewDoctorServvlet";
    const appointmentUrl = "/mgoodapp/AppointmentServlet?date=" + date + "&doc_id=" + get_id;

    // Make the first AJAX request to fetch doctor details
    axios.get(doctorUrl)
        .then(function(doctorResponse) {
            const docarray = doctorResponse.data;
            console.log(docarray);
            let doc_detail = docarray.find((e) => e.doctorId === parseInt(get_id));
            console.log(doc_detail);

            return axios.get(appointmentUrl)
                .then(function(appointmentResponse) {
                    const Appointedtime = appointmentResponse.data;
                    console.log(Appointedtime);

                  
                    todisable(Appointedtime);
                    
                });
        })
        .catch(function(error) {
            console.log(error);
        });
});

         
         
         
         
         
         function displaydoctors(doc_detail,Appointedtime){
			 
			 console.log(Appointedtime);
        let docdetail;
        let images = document.getElementById("img");
        images.setAttribute("src", doc_detail["doctorImg"]);
        let name = document.getElementById("name");
        name.innerText = "Dr. " + doc_detail["name"];
        let rate = document.getElementById("rate");
        let edu = document.getElementById("edu");
        edu.innerText = doc_detail["specialization"];
        let paras = document.getElementById("para");
        paras.innerText = doc_detail["bio"];
        
        const startTime = doc_detail["doctorAvailabilityFrom"];
console.log(startTime);
const endTime = doc_detail["doctorAvailabilityEnd"];
const startHour = parseInt(startTime.split(":")[0]);
console.log(endTime);
const endHour = parseInt(endTime.split(":")[0]);
const doctorID = "1";
const currentDate = new Date();
const currentDateString = currentDate.toISOString().slice(0, 10);

for (let hour = startHour; hour < endHour; hour++) {
    for (let minute = 0; minute < 60; minute += 30) {
        const intervalStart = new Date();
        intervalStart.setHours(hour);
        intervalStart.setMinutes(minute);
        const intervalEnd = new Date(intervalStart);
        intervalEnd.setMinutes(intervalEnd.getMinutes() + 30);

        const startString = formatTime(intervalStart);
        const endString = formatTime(intervalEnd);

        const slotID = `slot_${currentDateString}_${doctorID}_${startString}-${endString}`;

      const slotBtn = document.createElement("button");
const slotText = `${startString} - ${endString}`;
slotBtn.setAttribute("class", "btn");
slotBtn.textContent = slotText;
slotBtn.setAttribute("onclick", `bookapp("${slotText}")`);
rate.append(slotBtn);

        rate.append(slotBtn);
    }
}

function formatTime(date) {
    const hour = date.getHours();
    const minute = date.getMinutes();
    const period = hour >= 12 ? "PM" : "AM";
    const formattedHour = (hour % 12) || 12;
    const formattedMinute = minute < 10 ? `0${minute}` : minute;
    return `${formattedHour}:${formattedMinute} ${period}`;
}
         



        }
let previousAppointments = []; // Keep track of previously booked appointments

function todisable(Appointedtime) {
    console.log(Appointedtime);
    const buttons = document.querySelectorAll(".btn"); // Select all buttons with the class "btn"

    // Enable all buttons and restore their default styles
    for (let j = 0; j < buttons.length; j++) {
        const button = buttons[j];
        button.style.color = ""; // Remove the grey color
        button.disabled = false; // Enable the button
        button.style.cursor = "pointer"; // Restore the cursor
    }

    if (Appointedtime !== null) {
        for (let i = 0; i < Appointedtime.length; i++) {
            const appointmentTime = Appointedtime[i].trim(); // Trim appointment time string
            console.log(appointmentTime);

            // Iterate through all buttons with the class "btn"
            for (let j = 0; j < buttons.length; j++) {
                const button = buttons[j];
                console.log(button);
                const buttonTime = button.textContent.trim(); // Trim button text content
                console.log(buttonTime);

                // Check if the text content of the button matches the appointment time
                if (buttonTime === appointmentTime) {
                    button.style.color = "grey";
                    button.disabled = true;
                    button.style.cursor = "not-allowed";
                }
            }
        }

        // Update the previously booked appointments
        previousAppointments = Appointedtime;
    }
}

// Call this function when a new date is selected
function handleDateChange(Appointedtime) {
    // Disable previously booked appointments from the previous date
    todisable(previousAppointments);

    // Disable newly booked appointments for the selected date
    todisable(Appointedtime);
    
    updateDateInputValue(currentDate);
}
function bookapp(slotText) {
	let user_url = window.location.search;
        let params = new URLSearchParams(user_url);
        let get_user = params.get("user_id");
        console.log(get_user);
	
    const date = document.getElementById("date").value;
    const doc_id = get_id;
    const user_id = get_user;
    const encodedSlotText = encodeURIComponent(slotText);
    const encodedDate = encodeURIComponent(date);
    const encodedDocId = encodeURIComponent(doc_id);
    const encodedUserId = encodeURIComponent(user_id);
    
    const url = `./bookapp.jsp?slot=${encodedSlotText}&date=${encodedDate}&doc_id=${encodedDocId}&user_id=${encodedUserId}`;
    
    window.location.href = url;
}

         
         