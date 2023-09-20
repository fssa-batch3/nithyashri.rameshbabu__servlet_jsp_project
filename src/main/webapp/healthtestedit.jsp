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
        <button type="submit" class="btn5">Edit</button>
    </form>
    <script>
        // getting array
        let array = JSON.parse(localStorage.getItem("new_test"));
        console.log(array)
        let health_id = JSON.parse(localStorage.getItem("health_id"))
        let test_obj = array.find(function (healtest) {
            let check_id = healtest["healthtest_id"]
            if (health_id == check_id) {
                return true
            }
        })
        console.log(typeof health_id)
        console.log(test_obj);

        // Showing the value in edit page
        let image = document.getElementById("image_url");
        let name = document.getElementById("Name");
        let rating = document.getElementById("rating");
        let edu = document.getElementById("Education");

        image.value = test_obj["image"]
        name.value = test_obj["name"]
        rating.value = test_obj["rate"]
        edu.value = test_obj["education"]

        // edit
        let form = document.getElementById("form")
        form.addEventListener("submit", function (event) {
            event.preventDefault();

            let img = document.getElementById("image_url").value;
            let rat = document.getElementById("rating").value;
            let nam = document.getElementById("Name").value;
            let educa = document.getElementById("Education").value;

            let health_obj = {
                image: img,
                rate: rat,
                name: nam,
                education: educa,
            }


            let check_obj = Object.assign(test_obj, health_obj)
            console.log(check_obj)

            let index = array.indexOf(test_obj)
            console.log(index);

            array[index] = check_obj

            localStorage.setItem("new_test", JSON.stringify(array))
            console.log(array);

            alert("edited successfully")
            window.location.href = "./adminHealthtest.html"

        })

    </script>
</body>

</html>