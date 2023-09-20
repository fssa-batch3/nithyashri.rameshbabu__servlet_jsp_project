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
            <span>Title</span>
        </div>
        <div class="inputBox">
            <input id="content" type="text" required="required" />
            <span>Content</span>
        </div>

        <button type="submit" id="btn" class="btn5">Edit</button>
    </form>

    <!-- Javascript -->
    <script>
        // getting array
        let array = JSON.parse(localStorage.getItem("blog"));

        // getting the id in the url
        // const url = window.location.search;
        // const url_params = new URLSearchParams(url)
        // const get_id = url_params.get("blog_id")
        // console.log(get_id);

        //    getting full object from id
        // let blogObj = array.find(function (blog) {
        //     let check_id = blog["blog_id"]
        //     if (get_id == check_id)
        //         return true
        // })
        // console.log(blogObj);
        let blogid = JSON.parse(localStorage.getItem("editid"))
        console.log(blogid)

        let blogs = array.find(function (b) {
            let edit = b["blog_id"]
            if (edit == blogid[0]["blog_id"]) {
                return true;
            }
        })
        console.log(blogs)

        // Showing the value in edit page


        let image = document.getElementById("image_url");
        let content = document.getElementById("content");
        let name = document.getElementById("Name");

        image.value = blogs["image"]
        content.value = blogs["content"]
        name.value = blogs["name"]

        // edit
        let form = document.getElementById("form")
        form.addEventListener("submit", function (event) {
            event.preventDefault();

            let img = document.getElementById("image_url").value;
            let nam = document.getElementById("Name").value;
            let con = document.getElementById("content").value;

            let blogs_obj = {
                image: img,
                name: nam,
                content: con
            }
            console.log(blogs_obj);

            let check_obj = Object.assign(blogs, blogs_obj)
            console.log(check_obj)

            let index = array.indexOf(blogs)
            console.log(index);

            array[index] = check_obj

            localStorage.setItem("blog", JSON.stringify(array))
            console.log(array);

            alert("edited successfully")

        })





    </script>
</body>

</html>