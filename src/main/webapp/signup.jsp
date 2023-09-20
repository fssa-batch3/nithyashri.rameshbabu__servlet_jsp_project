<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../assets/css/signin.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
</head>

<body>
    <div class="contain">
        <div class="wrap">
            <div class="tit"><span>Sign-Up</span></div>
            <form id="form">
                <div class="rows">
                    <i class="fas fa-user"></i>
                    <input id="fname" type="text" placeholder="first name" pattern="[A-Za-z]{1,15}" value="surya"
                        required>
                </div>
                <div class=" rows">
                    <i class="fas fa-user"></i>
                    <input id="lname" type="text" placeholder="last name" pattern="[A-Za-z]{1,15}" value="umapathy"
                        required>
                </div>
                <div class="rows">
                    <i class="fa fa-envelope"></i>
                    <input id="email" type="email" placeholder="email" value="suryauma@gmail.com" required>
                </div>
                <div class="rows">
                    <i class="fas fa-lock"></i>
                    <input type="password" id="pass" placeholder="password" value="Surya@2002"
                        pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
                        title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
                        required>
                </div>
                <div class="rows">
                    <i class="fas fa-lock"></i>
                    <input type="password" id="passwd" placeholder="Confirm password" value="Surya@2002"
                        pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
                        title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
                        required>
                </div>
                <div class="rows button">
                    <button type="submit">sign-Up</button>
                </div>
                <div class="signup">Already member?<br><a href="./login.html">Login now</a> </div>
            </form>
        </div>
    </div>

    <script>
        let form = document.getElementById("form");
        form.addEventListener("submit", function (event) {
            event.preventDefault();
            let arr = [];
            let fname = document.getElementById("fname").value;
            let lname = document.getElementById("lname").value;
            let email = document.getElementById("email").value;
            let password = document.getElementById("pass").value;
            let rePassword = document.getElementById("passwd").value;
            let user_id = Date.now();
            if (password.length <= 6) {
                alert("Password is  must be 6 characters");
                return false;

            }
            if (password != rePassword) {
                alert("Confirm is diffrent from password");
                return false;
            }
            if (localStorage.getItem("user") === null) {
                localStorage.setItem("user", JSON.stringify(arr));
            } else {
                let checking = JSON.parse(localStorage.getItem("user"));
                let match = false;
                for (let i = 0; i < checking.length; i++) {
                    if (email == checking[i].email) {
                        match = true;
                        break;
                    }
                }
                if (match == true) {
                    alert("this email-id is already exist!");
                } else {
                    let userdata = {
                        fname,
                        lname,
                        email,
                        password,
                        rePassword,
                        user_id,
                        address: "",
                        mobileNumber: "",
                        img: ""

                    };
                    arr.push(userdata)
                    let backup_data = JSON.parse(localStorage.getItem("user"));
                    backup_data.push(userdata);
                    localStorage.setItem("user", JSON.stringify(backup_data));
                    alert("User Added");
                    window.location.href = "./login.html";


                }
            }
        });
    </script>
    <script type="module">
        // Import the functions you need from the SDKs you need
        import { initializeApp } from "https://www.gstatic.com/firebasejs/9.21.0/firebase-app.js";
        import { getDatabase, set, ref, onValue, push, } from "https://www.gstatic.com/firebasejs/9.21.0/firebase-database.js";

        // Your web app's Firebase configuration
        const firebaseConfig = {
            apiKey: "AIzaSyBMN7DG9PsFnIRPTAzCTU9dNqdZ7GA2pUc",
            authDomain: "mgood-hospital-website.firebaseapp.com",
            projectId: "mgood-hospital-website",
            storageBucket: "mgood-hospital-website.appspot.com",
            messagingSenderId: "207671197815",
            appId: "1:207671197815:web:d14ad8ac42ac44e53e0672"
        };

        // Initialize Firebase
        const app = initializeApp(firebaseConfig);

        // getting data from firebase
        let database = getDatabase();
        console.log(database)

        // create a reference to a key "name" in the database 
        const starCountRef = ref(database, 'name/');


        onValue(starCountRef, (snapshot) => {
            const data = snapshot.val();
            console.log(data)
        });


    </script>
</body>

</html>