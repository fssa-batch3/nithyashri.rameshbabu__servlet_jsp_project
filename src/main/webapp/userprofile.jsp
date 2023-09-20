<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../assets/css/userprofile.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
</head>

<body>
    <header class="header" id="header">

    </header>
    <div class="wholeprofilecontainer">
        <div class="userdetails">

            <h1 class="profileh1">Edit profile</h1>
            <form id="form">
                <img alt="" id="profile">

                <label for="name">First Name</label><br />
                <input type="text" id="name" placeholder=" enter your name" required /><br />


                <label for="surname">Last name</label><br />
                <input type="text" class="surname" id="surname" placeholder=" enter your last name" required /><br />

                <label for="emailid">Email ID</label><br />
                <input type="email" class="emailid" id="email" placeholder=" enter your Email ID" required /><br />

                <label for="postalcode">Password</label><br />
                <input type="password" class="postalcode" id="password" required /><br />
                <label for="postalcode">Address</label><br />
                <input class="postalcode" id="address" required /><br />
                <label for="postalcode">Mobile number</label><br />
                <input class="postalcode" id="phone_no" type="tel"
                    pattern="^(?:\+1)?[ -]?\(?([0-9]{3})\)?[ -]?([0-9]{3})[ -]?([0-9]{4})$"
                    title="Must contain 10 numbers" required /><br />
                <label for="postalcode">Upload image</label><br />
                <input class="postalcode" id="image_url" required /><br />
                <button class="submit" type="submit">Save</button>
                <button class="submit" type="submit" id="delete">Delete</button>
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
    <script src="../assets/js/script.js"></script>
    <script>


        let oneUser = JSON.parse(localStorage.getItem("login_user"));
        // for array
        let fullArray = JSON.parse(localStorage.getItem("user"));
        let selectedUser = fullArray.find(function (event) {
            let emailValue = event["email"];
            if (oneUser == emailValue) {
                return true;
            }
        });
        console.log(selectedUser);
        let first_name = document.getElementById("name");
        let last_name = document.getElementById("surname");
        let email = document.getElementById("email");
        let password = document.getElementById("password");
        let img = document.getElementById("image_url")
        let address = document.getElementById("address");
        let mobileNumber = document.getElementById("phone_no");

        email.value = selectedUser["email"];
        first_name.value = selectedUser["fname"];
        last_name.value = selectedUser["lname"];
        password.value = selectedUser["password"];
        img.value = selectedUser["image"]
        address.value = selectedUser["address"];
        mobileNumber.value = selectedUser["mobileNumber"]

        let photo = document.getElementById("profile")
        photo.setAttribute("src", selectedUser["image"])

        let pForm = document.getElementById("form");
        pForm.addEventListener("submit", function (event) {
            event.preventDefault();
            let first_name = document.getElementById("name").value;
            let last_name = document.getElementById("surname").value;
            let email = document.getElementById("email").value;
            let address = document.getElementById("address").value;
            let mobileNumber = document.getElementById("phone_no").value;
            let image = document.getElementById("image_url").value;

            let newData = { email, address, mobileNumber, image };
            let combinedData = Object.assign(selectedUser, newData);
            console.log(combinedData);
            let findIndex = fullArray.indexOf(selectedUser);
            console.log(findIndex);
            fullArray[findIndex] = combinedData;
            localStorage.setItem("user", JSON.stringify(fullArray));
            alert("successfully changed");
            window.location.href = "./doctor0.html";
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
                localStorage.setItem("user", JSON.stringify(fullArray));
                localStorage.removeItem("login_user")
                alert("account deleted")
                window.location.href = "/index.html";

            }

        });

    </script>

    <script src="../components/header.js">

    </script>
    <script>
        nav_head()
    </script>
</body>

</html>