<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../assets/css/login.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
</head>

<body>
    <div class="contain">
        <div class="wrap">
            <div class="tit"><span>Login Here</span></div>
            <form id="form2">
                <div class="rows">
                    <i class="fas fa-user"></i>
                    <input type="text" id="email" placeholder="Email or Phone" value="suryauma@gmail.com" required>
                </div>
                <div class="rows">
                    <i class="fas fa-lock"></i>
                    <input type="password" id="password" placeholder="Password" id="psw"
                        pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" value="Surya@2002"
                        title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
                        required>
                </div>
                <div class="password"><a href="./signup.html">Forgot password?</a></div>
                <div class="rows button">
                    <button type="submit">Login</button>
                </div>
                <div class="signup">Not a member? <a href="./signup.html">Signup now</a></div>
            </form>
        </div>
    </div>












    <script>

        let form2 = document.getElementById("form2");
        form2.addEventListener("submit", function (event) {
            // let arr = [];
            event.preventDefault();
            let check = localStorage.getItem("user");
            let data = JSON.parse(check);
            const email = document.getElementById("email").value;
            const password = document.getElementById("password").value;

            let match = false;
            for (let i = 0; i < data.length; i++) {

                if (email === data[i].email && password === data[i].password) {
                    match = true;
                    // arr.push(data[i]);
                    window.localStorage.setItem("login_user", JSON.stringify(data[i].email));
                    window.localStorage.setItem("user_id", JSON.stringify(data[i].user_id));
                    break;
                }


            }

            if (match == true) {
                window.alert("login success!");
                window.location.href = "./doctor0.html"
            }
            else {
                window.alert("invalid user credentials");
            }

        });

    </script>
</body>

</html>