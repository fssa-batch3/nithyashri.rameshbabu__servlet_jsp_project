 function getAllDoctors() {
        const url = "/mgoodapp/ViewDoctorServvlet";
        axios.get(url)
            .then(function(response) {
                const docarray = response.data;
                let doctors = docarray.filter((e) => e.confirmation === "approved");
                console.log(doctors);
               displaydoctors(doctors); 
            })
            .catch(function(error) {
                console.log(error);
            });
    }
            let Box = document.querySelector(".tab")

            function displaydoctors(doctors){
             doctors.forEach(function (element) {
                let arry =
                    `
           <tbody>
                <tr>
                    <td><img class="mgooddoc"
                            src= ${element["doctorImg"]}>
                    </td>
                    <td>Dr.${element["name"]}</td>
                    <td>${element["specialization"]}</td>
                    <td>${element["clinicalName"]}</td>
                    <td>Approved &#9989;</td>
                </tr>
         </tbody>`

                Box.innerHTML += arry
            }) 
            }
           window.onload = function() {
            getAllDoctors();
        };
