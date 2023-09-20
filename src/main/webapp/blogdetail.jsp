<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../assets/css/blogdetail.css">
</head>

<body>
    <header class="header" id="header">

    </header>
    <div class="main-wrapper">
        <div class="container">
            <div class="product-div">
                <div class="product-div-left">
                    <div class="img-container">
                        <img id="img" alt="image">
                    </div>
                </div>
                <div class="product-div-right">
                    <span id="name" class="doctor-name"></span>
                    <p id="content" class="doctor-description"></p>
                    <p class="doctor-description">Outside of the many misconceptions, it creates about anatomy and sex,
                        this phrase also leads to a lot of confusion about what period products virgins can and cannot
                        use. Luckily for any would-be cup users out there, while you may not have had sex, you don't
                        have to abstain from using a menstrual cup.</p>
                    <!-- <div class="btn-groups">
                        <button type="button" class="add-appointment">Book
                            appointment</button>
                        <button type="button" class="available-slot">Slot 6AM-10AM</button>
                    </div> -->
                </div>
            </div>
        </div>
    </div>




    <script>
        let blog_url = window.location.search
        let urlparams = new URLSearchParams(blog_url)
        // console.log(urlparams);
        let geturl = urlparams.get("blog_id")
        console.log(geturl);
        let details = JSON.parse(localStorage.getItem("blog"))
        console.log(details);


        let blog_detail = details.find((e) => {
            if (geturl == e["blog_id"]) {
                return true;
            }
        })

        console.log(blog_detail)
        let images = document.getElementById("img")
        images.setAttribute("src", blog_detail["image"])
        let name = document.getElementById("name")
        name.innerText = blog_detail["name"]
        let content = document.getElementById("content")
        content.innerText = blog_detail["content"]



    </script>




    <script src="../assets/js/script.js">
    </script>
    <script>
        function profile() {
            window.location.href = "./userprofile.html"
        }
    </script>
    <script src="../components/header.js">

    </script>
    <script>
        nav_head()
    </script>
</body>



</html>