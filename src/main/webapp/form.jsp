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
        <h1>Create_doctor</h1>
        <div class="inputBox">
            <input id="image_url" type="text" name="" required="required" />
            <span>Doctor image </span>
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

        <button type="submit" class="btn5">Send</button>
    </form>

    <script>
        let form = document.getElementById("form");

        form.addEventListener("submit", function (event) {
            event.preventDefault();

            let updates = {

            };

            let image_url = document.getElementById("image_url").value;
            updates["image"] = image_url;

            let rating = document.getElementById("rating").value;
            // console.log(rating);
            updates["rate"] = rating;
            let hosimg = document.getElementById("hospitalimg").value;
            // console.log(rating);
            updates["hosimg"] = hosimg;

            let name = document.getElementById("Name").value;
            // console.log(title);
            updates["name"] = name;

            let education = document.getElementById("Education").value;
            // console.log(title);
            updates["education"] = education;

            let link = document.getElementById("link").value;
            // console.log(link);
            updates["link"] = link;
            let docmail = document.getElementById("docmail").value;
            // console.log(link);
            updates["docmail"] = docmail;
            let doc_id = Date.now()
            updates["doc_id"] = doc_id;

            console.log(updates);

            let all = [];

            if (localStorage.getItem("new_card") != null) {
                all = JSON.parse(localStorage.getItem("new_card"));
                console.log(all);
            }

            all.push(updates);

            localStorage.setItem("new_card", JSON.stringify(all));
            window.location.href = "./admindoc.html";
        });
    </script>
</body>

</html>