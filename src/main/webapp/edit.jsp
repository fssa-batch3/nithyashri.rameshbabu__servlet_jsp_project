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
            <input id="image_url" type="text" name="" required="required" />
            <span>Doctor image</span>
        </div>
        <div class="inputBox">
            <input id="rating" type="text" name="" required="required" />
            <span>Hospital name</span>
        </div>
        <div class="inputBox">
            <input id="hospitalimg" type="text" name="" required="required" />
            <span>Hospital img</span>
        </div>
        <div class="inputBox">
            <input id="Name" type="text" name="" required="required" />
            <span>Doctor name</span>
        </div>
        <div class="inputBox">
            <input id="docmail" type="text" name="" required="required" />
            <span>Doctor mail</span>
        </div>
        <div class="inputBox">
            <input id="Education" type="text" name="" required="required" />
            <span>Education</span>
        </div>
        <div class="inputBox">
            <input id="link" type="text" name="" required="required" />
            <span>overall ex</span>
        </div>

        <!-- button -->
        <button type="submit" id="btn" class="btn5">Edit</button>
    </form>

    <!-- Javascript -->
    <script>
        // getting array
        let array = JSON.parse(localStorage.getItem("new_card"));

        // getting the id in the url
        const url = window.location.search;
        const url_params = new URLSearchParams(url)
        const get_id = url_params.get("doc_id")
        // console.log(get_id);

        //    getting full object from id
        let prod_obj = array.find(function (doctor) {
            let check_id = doctor["doc_id"]
            if (get_id == check_id)
                return true
        })
        console.log(prod_obj);

        // Showing the value in edit page
        let image = document.getElementById("image_url");
        let rating = document.getElementById("rating");
        let hosimg = document.getElementById("hospitalimg")
        let name = document.getElementById("Name");
        let docmail = document.getElementById("docmail")
        let edu = document.getElementById("Education");
        let link = document.getElementById("link");

        image.value = prod_obj["image"]
        rating.value = prod_obj["rate"]
        hosimg.value = prod_obj["hosimg"]
        name.value = prod_obj["name"]
        edu.value = prod_obj["education"]
        link.value = prod_obj["link"]
        docmail.value = prod_obj["docmail"]

        // edit
        let form = document.getElementById("form")
        form.addEventListener("submit", function (event) {
            event.preventDefault();

            let img = document.getElementById("image_url").value;
            let rat = document.getElementById("rating").value;
            let hosimg = document.getElementById("hospitalimg").value
            let nam = document.getElementById("Name").value;
            let docmail = document.getElementById("docmail").value;
            let educa = document.getElementById("Education").value;
            let li = document.getElementById("link").value;

            let doc_obj = {
                image: img,
                rate: rat,
                hosimg: hosimg,
                name: nam,
                docmail: docmail,
                education: educa,
                link: li,

            }
            // console.log(doc_obj);

            let check_obj = Object.assign(prod_obj, doc_obj)
            console.log(check_obj)

            let index = array.indexOf(prod_obj)
            console.log(index);

            array[index] = check_obj

            localStorage.setItem("new_card", JSON.stringify(array))
            console.log(array);

            alert("edited successfully")
            window.location.href = "./admindoc.html";
        })


    </script>
</body>

</html>