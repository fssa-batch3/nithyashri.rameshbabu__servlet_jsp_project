<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../assets/css/docprofile.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
</head>

<body>
    <div class="wholeprofilecontainer">
        <div class="userdetails">

            <h1 class="profileh1">Edit profile</h1>
            <form id="form">
                <img alt="" id="profile">

                <label for="name">First Name</label><br />
                <input type="text" id="name" placeholder=" enter your name" required /><br />

                <label for="emailid">Email ID</label><br />
                <input type="email" class="emailid" id="mail" placeholder=" enter your Email ID" required /><br />

                <label for="postalcode">Mobile number</label><br />
                <input class="postalcode" id="mobnum" type="tel" placeholder="Enter your mobile number"
                    pattern="^(?:\+1)?[ -]?\(?([0-9]{3})\)?[ -]?([0-9]{3})[ -]?([0-9]{4})$"
                    title="Must contain 10 numbers" required /><br />

                <label for="postalcode">Doctor image</label><br />
                <input class="postalcode" id="image_url" placeholder="Upload your image" required /><br />

                <label for="postalcode">Hospital image</label><br />
                <input class="postalcode" id="hosimg" placeholder="Upload your hospital image" required /><br />

                <label for="postalcode">Hospital name</label><br />
                <input class="postalcode" id="hosname" placeholder="Enter you Hospital name" required /><br />

                <label for="postalcode">Availabilty time</label><br />
                <input class="postalcode" id="doctor-availability" placeholder="Enter you availability time"
                    required /><br />

                <label for="postalcode">Consultation fee</label><br />
                <input class="postalcode" id="docfee" placeholder="Enter you fees" required /><br />

                <button class="submit" type="submit">Edit</button>
                <button class="submit" id="delete">Delete</button>
            </form>
        </div>
    </div>
    <footer class="footer">
        <div class="container">
            <div class="rows">
                <div class="footer-col">
                    <h4>Home</h4>
                    <ul>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Ratings</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h4>Services</h4>
                    <ul>
                        <li><a href="#">Doctors</a></li>
                        <li><a href="#">Specialist</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h4>Blogs</h4>
                    <ul>
                        <li><a href="#">consult</a></li>
                        <li><a href="#">packages</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h4>Follow Us</h4>
                    <div class="share">
                        <a href="#" class="fab fa-youtube"></a>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <script>


        let oneUser = JSON.parse(localStorage.getItem("doctor_login"));
        // for array
        let fullArray = JSON.parse(localStorage.getItem("doctor"));
        let selectedUser = fullArray.find(function (event) {
            let emailValue = event["mail"];
            if (oneUser == emailValue) {
                return true;
            }
        });
        console.log(selectedUser);
        let first_name = document.getElementById("name");
        console.log(first_name)
        let email = document.getElementById("mail");
        let doctoravailability = document.getElementById("doctor-availability");
        let docfee = document.getElementById("docfee");
        let docimg = document.getElementById("image_url");
        let hosname = document.getElementById("hosname");
        let hosimg = document.getElementById("hosimg");
        let mobileNumber = document.getElementById("mobnum");


        first_name.value = selectedUser["name"];
        email.value = selectedUser["mail"];
        doctoravailability.value = selectedUser["docslot"];
        docimg.value = selectedUser["doctor_img"]
        hosname.value = selectedUser["hosname"];
        hosimg.value = selectedUser["hosimg"]
        docfee.value = selectedUser["docfee"];
        mobileNumber.value = selectedUser["mob"]

        let photo = document.getElementById("profile")
        photo.setAttribute("src", selectedUser["doctor_img"])

        let pForm = document.getElementById("form");
        pForm.addEventListener("submit", function (event) {
            event.preventDefault();
            let first_name = document.getElementById("name").value;
            let email = document.getElementById("mail").value;
            let doctoravailability = document.getElementById("doctor-availability").value;
            let docfee = document.getElementById("docfee").value;
            let docimg = document.getElementById("image_url").value;
            let hosname = document.getElementById("hosname").value;
            let hosimg = document.getElementById("hosimg").value;
            let mobileNumber = document.getElementById("mobnum").value;

            let newData = { first_name, email, doctoravailability, docfee, docimg, hosname, hosimg, mobileNumber };
            let combinedData = Object.assign(selectedUser, newData);
            console.log(combinedData);
            let findIndex = fullArray.indexOf(selectedUser);
            console.log(findIndex);
            fullArray[findIndex] = combinedData;
            localStorage.setItem("doctor", JSON.stringify(fullArray));
            alert("successfully changed");
            window.location.href = "./successdoctor.html";
        });
        let delete_user = document.getElementById("delete");
        delete_user.addEventListener("click", function (event) {
            event.preventDefault();
            let indexDel = fullArray.indexOf(selectedUser);
            let msg = confirm("Are you sure you want to delete this account");
            if (msg !== true) {
                return;
            } else {
                fullArray.splice(indexDel, 1);
                console.log(fullArray);
                localStorage.setItem("doctor", JSON.stringify(fullArray));
                localStorage.removeItem("doctor_login")
                alert("account deleted")
                window.location.href = "/index.html";

            }

        });

    </script>

    <script src="../components/docheader.js">

    </script>

</body>

</html>