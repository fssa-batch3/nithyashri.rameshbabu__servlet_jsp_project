<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../assets/css/adminlogin.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
</head>

<body>
    <div class="contain">
        <div class="wrap">
            <div class="tit"><span>Admin_login</span></div>
            <form id="form2">
                <div class="rows">
                    <i class="fa fa-envelope"></i>
                    <input id="email" type="email" placeholder="email" required>
                </div>
                <div class="rows">
                    <i class="fas fa-lock"></i>
                    <input type="password" id="pass" placeholder="password" pattern="[A-Za-z]{1,8}"
                        title="Must contain at least 8 characters" required>
                </div>
                <div class="rows button">
                    <button type="submit">Login</button>
                </div>
            </form>
        </div>
    </div>
</body>



<script>
    let form2 = document.getElementById("form2");
    form2.addEventListener("submit", function (event) {
        let arr = [];
        event.preventDefault();
        let check = localStorage.getItem("admin");
        let data = JSON.parse(check);
        const email = document.getElementById("email").value;
        const password = document.getElementById("pass").value;

        let adminObj = {
            adminEmail: email,
            adminPwd: password,
        }
        arr.push(adminObj)
        let match = false;
        // for (let i = 0; i < data.length; i++) {
        console.log(arr[0]["adminEmail"]);

        if (email === "admin@gmail.com" && password === "herevro") {
            match = true;
            // arr.push(data[i]);
            // window.location.href = "./adminprofile.html"
            window.localStorage.setItem("adminmail", JSON.stringify(arr[0]["adminEmail"]));
            window.localStorage.setItem("adminhere", JSON.stringify(arr));
            // window.localStorage.setItem("adminmail", JSON.stringify(arr[0]["adminEmail"]));
            console.log(match);
            window.alert("admin added");

            // break;/
        }



        // }

        if (match === true) {
            // window.alert("login success!");

            window.location.href = "./adminpage.html"
        }
        else {
            window.alert("invalid admin credentials");
        }

    });

</script>

</html>