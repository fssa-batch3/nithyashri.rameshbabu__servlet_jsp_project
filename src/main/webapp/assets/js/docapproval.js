       const url = window.location.search;
        const url_params = new URLSearchParams(url)
        const get_name = url_params.get("doctorname")
        console.log(get_name)

   /*      let finddoc = docordetails.find(function (event) {
            let find = event["doctor_id"]
            if (find == get_id) {
                return true;
            }
        })
        console.log(finddoc)  */


        let centerbox = document.createElement("div")
        centerbox.setAttribute("class", "popup")
        centerbox.innerHTML = ` <h1>Dr.${get_name}</h1>
            <p>Thank you for submitting your information and credentials for approval. We appreciate your interest in
                joining our esteemed medical team. Please note that your application is currently being reviewed by our
                administrative team, and we kindly ask for your patience during this process.</p>
            <p>Once your application has been thoroughly assessed, we will reach out to you via the contact details
                provided
                in your submission. In the meantime, feel free to explore our website to learn more about our
                organization,
                services, and values.</p>
            <p>Thank you again for your interest in joining our team. We look forward to potentially working with you
                and
                making a positive impact on the health and well-being of our patients.</p> 
                <button>Check status</button>
        `
        document.querySelector(".popup").append(centerbox)


        let docapprove = JSON.parse(localStorage.getItem("doctor"))
        let getapprove = window.location.search
        let getid = new URLSearchParams(getapprove)
        let getdocid = getid.get("doctorid")
        console.log(getdocid)
        let finddoctor = docapprove.find(function (event) {
            let doc = event["doctor_id"]
            if (getdocid == doc) {
                return true;
            }
        })
        console.log(finddoctor)
        
        
        
        if (finddoctor["approve"] == "no") {
            // alert("Your information is invalid so admin declined you")
            window.location.href = "./declineddoctor.html"
        }
        else if (finddoctor["approve"] == "yes") {
            // alert("Your information is valid so admin approved you")
            // window.location.href = "./docapprove.html"
        }
        else {
            window.location.href = "./doclog.html"
        }