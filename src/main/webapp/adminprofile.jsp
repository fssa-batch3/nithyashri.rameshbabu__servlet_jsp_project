<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../assets/css/adminprofile.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
</head>

<body>
    <header class="header">
        <a href="#" class="logo"> <i class="fas fa-heartbeat"></i>MGOOD</a>
        <nav class="navbar">
            <a href="./adminlogin.html">Admin</a>
            <a href="../Pages/adminpage.html">Create</a>
            <a href="./signup.html">Login</a>
            <a href="#"><i class="fa fa-shopping-cart"></i></a>
        </nav>
        <div id="menu-btn" class="fas fa-bars"></div>
    </header>
    <div class="wholeprofilecontainer">
        <div class="userdetails">

            <h1 class="profileh1">Edit admin profile</h1>
            <form id="form">
                <img alt="" id="profile">

                <label for="name">First Name</label><br />
                <input type="text" id="name" placeholder=" enter your name" /><br />


                <label for="surname">Last name</label><br />
                <input type="text" class="surname" id="surname" placeholder=" enter your last name" /><br />

                <label for="emailid">Email ID</label><br />
                <input type="email" class="emailid" id="email" placeholder=" enter your Email ID" /><br />

                <label for="postalcode">Password</label><br />
                <input type="text" class="postalcode" id="password" /><br />
                <label for="postalcode">Address</label><br />
                <input class="postalcode" id="address" /><br />
                <label for="postalcode">Mobile number</label><br />
                <input class="postalcode" id="phone_no" /><br />
                <label for="postalcode">Upload image</label><br />
                <input class="postalcode" id="image_url" /><br />
                <button class="submit" type="submit">Save</button>

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

    <!-- <script src="../assets/js/script.js"></script> -->
    <script>


        // let oneUser = JSON.parse(localStorage.getItem("admin_mail"));
        // let fullArray = JSON.parse(localStorage.getItem("adminhere"));
        // let selectedUser = fullArray.find(function (event) {
        //     let emailValue = event["email"];
        //     if (oneUser == emailValue) {
        //         return true;
        //     }
        // });
        // console.log(fullArray);
        // let first_name = document.getElementById("name");
        // let last_name = document.getElementById("surname");
        // let email = document.getElementById("email").value = fullArray[0]["adminEmail"];

        // let password = document.getElementById("password").value = fullArray[0]["adminPwd"];
        // let img = document.getElementById("image_url")
        // let address = document.getElementById("address");
        // let mobileNumber = document.getElementById("phone_no");

        // email = fullArray["adminEmail"];
        // first_name.placeholder = "fill your first name";
        // last_name.placeholder = "fill your last name";
        // password = fullArray["adminPwd"];
        // img.placeholder = "fill your image"
        // address.placeholder = "fill your your address";
        // mobileNumber.placeholder = "fill your your mobile number"

        // let photo = document.getElementById("profile")
        // photo.setAttribute("src", fullArray["image"])

        // let pForm = document.getElementById("form");
        // pForm.addEventListener("submit", function (event) {
        //     event.preventDefault();
        //     let first_name = document.getElementById("name").value;
        //     let last_name = document.getElementById("surname").value;
        //     let adminEmail = document.getElementById("email").value;
        //     let address = document.getElementById("address").value;
        //     let mobileNumber = document.getElementById("phone_no").value;
        //     let image = document.getElementById("image_url").value;

        //     let newData = { first_name, last_name, adminEmail, address, mobileNumber, image };
        //     let combinedData = Object.assign(fullArray[0], newData);
        //     console.log(combinedData);
        //     let findIndex = fullArray.indexOf(fullArray);
        //     console.log(findIndex);
        //     fullArray[findIndex] = combinedData;
        //     localStorage.setItem("adminhere", JSON.stringify(fullArray));

        //     alert("successfully changed");
        //     window.location.href = "./adminpage.html"


            // window.location.href = "./doctor0.html";
        // });
        // let array = JSON.parse(window.localStorage.getItem("adminhere"))
        // let email_check = JSON.parse(window.localStorage.getItem("adminmail"))

        // let profile = array.find(function (objuser) {
        //     let mailcheck = objuser["adminEmail"];

        //     if (email_check == mailcheck) {
        //         let profilepic = (document.getElementById("image_url").value =
        //             array[0]["image"]);
        //         let username = (document.getElementById("name").value =
        //             array[0]["fname"]);
        //         let userphno = (document.getElementById("surname").value =
        //             array[0]["lname"]);
        //         let usermail = (document.getElementById("email").value =
        //             array[0]["email"]);
        //         let userpwd = (document.getElementById("password").value =
        //             array[0]["password"]);
        //         let useraddress = (document.getElementById("address").value =
        //             array[0]["address"]);
        //         let useracco = (document.getElementById("phone_no").value =
        //             array[0]["mobileNumber"]);
        //     }
        // })


        // console.log(profile);

        // let delete_user = document.getElementById("delete");
        // delete_user.addEventListener("click", function (event) {
        //     event.preventDefault();
        //     let indexDel = fullArray.indexOf(fullArray);
        //     let msg = confirm("Are you sure you want to delete this account");
        //     if (msg !== true) {
        //         return;
        //     } else {
        //         fullArray.splice(indexDel, 1);
        //         console.log(fullArray);
        //         localStorage.setItem("adminhere", JSON.stringify(fullArray));

        //     }
        // });

    </script>
</body>

</html>