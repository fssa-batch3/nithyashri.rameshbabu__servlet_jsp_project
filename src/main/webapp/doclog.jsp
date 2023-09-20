<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../assets/css/docmedicalform.css">
</head>

<body>
    <form id="form" class="form">
        <h1>Doctor Log_in</h1>

        <label for="username">email</label>
        <input type="text" id="mail" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" required>

        <label for="username">Password</label>
        <input type="password" id="passwd" placeholder=" password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
            title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
            required>
        <button id="submit" type="submit">Continue</button>
    </form>




    <script>

        let loginform = document.getElementById("form");
        loginform.addEventListener("submit", function (event) {

            event.preventDefault();
            let data = JSON.parse(localStorage.getItem("doctor"));
            const email = document.getElementById("mail").value;
            const password = document.getElementById("passwd").value;

            let match = false;
            for (let i = 0; i < data.length; i++) {

                if (email === data[i].mail && password === data[i].rePassword) {
                    match = true;

                    window.localStorage.setItem("doctor_login", JSON.stringify(data[i].mail));
                    break;
                }


            }

            if (match == true) {
                window.alert("login success!");
                window.location.href = "./successdoctor.html"
            }
            else {
                window.alert("invalid doctor credentials");
            }

        });

    </script>
</body>

</html>