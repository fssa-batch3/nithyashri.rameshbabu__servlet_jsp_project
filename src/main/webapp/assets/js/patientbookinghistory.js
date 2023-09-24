   
    window.onload = function() {
        let details_url = window.location.search;
        let urlparams = new URLSearchParams(details_url);
        let geturl = urlparams.get("user_id");
console.log(geturl);
        

        const url = "/mgoodapp/GetAllViewAppJsonServlet";
        axios.get(url)
            .then(function(response) {
                const apparray = response.data;
                console.log(apparray);
                let app_detail = apparray.filter((e) => e.user.userId === parseInt(geturl));
                console.log(app_detail);
             for (let i = 0; i < app_detail.length; i++) { 
                   let card = document.createElement("div")
                    card.setAttribute("class", "card")
                    card.innerHTML = `<h1>Appoinment Booking Details</h1>
                <div class="appointment-details">
                    <p>Doctor Name: ${app_detail[i].doctor.name} </p>
                    <p>Doctor Speciality: ${app_detail[i].doctor.clinicalName} </p>
                
                    
                </div>
                <div class="date-time">
                    
                    <p><b>Date:</b> ${app_detail[i].slotdate}</p><br>
                    <p><b>Time:</b> ${app_detail[i].time}</p>
                </div>
                <button id = "${app_detail[i].appointmentId}" onlclick = "download(this.id)">Download Appointment</button>`
                    // <a href="#" class="btn">Add to Calendar</a>`

                    document.querySelector(".main").append(card)
                }
            
      })
    .catch(function(error) {
                console.log(error);
            });
            
            
            
    }       
       
       function download(e){
		   window.location.href = "./appshow?appointmentId=" + e;
	   }
           
 