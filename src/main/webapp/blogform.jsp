<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../assets/css/adminblog.css">
</head>

<body>
    <form id="form">
        <div class="inputBox">
            <input id="image_url" type="text" required="required" />
            <span>Image Url</span>
        </div>
        <div class="inputBox">
            <input id="Name" type="text" required="required" />
            <span>Title</span>
        </div>
        <div class="inputBox">
            <input id="content" type="text" required="required" />
            <span>Content</span>
        </div>


        <button type="submit" class="btn5">Send</butt on>
    </form>

    <script>
        let form = document.getElementById("form");

        form.addEventListener("submit", function (event) {
            event.preventDefault();

            let blogObj = {};

            let image_url = document.getElementById("image_url").value;
            blogObj["image"] = image_url;

            let name = document.getElementById("Name").value;
            // console.log(title);
            blogObj["name"] = name;

            let link = document.getElementById("content").value;
            // console.log(link);
            blogObj["content"] = link;

            let blog_id = Date.now()
            blogObj["blog_id"] = blog_id;

            console.log(blogObj);

            let all = [];

            if (localStorage.getItem("blog") != null) {
                all = JSON.parse(localStorage.getItem("blog"));
                console.log(all);
            }

            all.push(blogObj);

            localStorage.setItem("blog", JSON.stringify(all));
            alert("Blog created")
            window.location.href = "./adminservices.html"

        });
    </script>
</body>

</html>