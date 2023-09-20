<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../assets/css/adminsign.css">
</head>

<body>
    <div class="contain">
        <div class="wrap">
            <div class="tit"><span>Admin_Sign-Up</span></div>
            <form id="form">
                <div class="rows">
                    <i class="fa fa-envelope"></i>
                    <input id="email" type="email" placeholder="email" required>
                </div>
                <div class="rows">
                    <i class="fas fa-lock"></i>
                    <input type="text" id="pass" placeholder="password" pattern="[A-Za-z]{1,8}"
                        title="Must contain at least 8 characters" required>
                </div>
                <div class="rows">
                    <i class="fas fa-lock"></i>
                    <input type="passwords" id="passwd" placeholder="Confirm password" pattern="[A-Za-z]{1,8}"
                        title="Must contain at least 8 characters " required>
                </div>
                <div class="rows button">
                    <button type="submit">sign-Up</button>
                </div>
                <div class="signup">Already member? Login now </div>
            </form>
        </div>
    </div>

</body>




<script>

    let form = document.getElementById("form");
    form.addEventListener("submit", function (event) {
        event.preventDefault();
        let arr = [];
        let email = document.getElementById("email").value;
        let password = document.getElementById("pass").value;
        let rePassword = document.getElementById("passwd").value;
        // let signindetails=JSON.parse(windows.localStorage.getItem(""))

        if (password.length < 6) {
            alert("Password is  must be 6 characters");
            return false;
            3
        }
        if (password != rePassword) {
            alert("Confirm is diffrent from password");
            return false;
        }

        let userdata = {
            email,
            password,
            rePassword,
        };
        let new_data = localStorage.getItem("admin");
        let backup_data = JSON.parse(new_data);


        arr.push(userdata);
        localStorage.setItem("admin", JSON.stringify(arr));

        window.location.href = "./adminlogin.html";
        alert("admin Added");
    });
</script>

</html>