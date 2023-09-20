<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../assets/css/form.css">
</head>

<body>
    <form id="form">
        <div class="inputBox">
            <input id="image_url" type="text" required="required" />
            <span>Image Url</span>
        </div>
        <div class="inputBox">
            <input id="Name" type="text" required="required" />
            <span>Test name</span>
        </div>
        <div class="inputBox">
            <input id="rating" type="text" required="required" />
            <span>Price</span>
        </div>
        <div class="inputBox">
            <input id="Education" type="text" required="required" />
            <span>Test Details</span>
        </div>
        <button type="submit" class="btn5">Send</button>
    </form>

    <script>
        let form = document.getElementById("form");

        form.addEventListener("submit", function (event) {
            event.preventDefault();

            let test = {};

            let image_url = document.getElementById("image_url").value;
            test["image"] = image_url;

            let name = document.getElementById("Name").value;
            // console.log(title);
            test["name"] = name;

            let rating = document.getElementById("rating").value;
            // console.log(rating);
            test["rate"] = rating;

            let education = document.getElementById("Education").value;
            // console.log(title);
            test["education"] = education;

            let healthtest_id = Date.now()
            test["healthtest_id"] = healthtest_id;

            console.log(test);

            let alltest = [];

            if (localStorage.getItem("new_test") != null) {
                alltest = JSON.parse(localStorage.getItem("new_test"));
                console.log(alltest);
            }

            alltest.push(test);

            localStorage.setItem("new_test", JSON.stringify(alltest));
            window.location.href = "./adminHealthtest.html";
        });
    </script>
</body>

</html>