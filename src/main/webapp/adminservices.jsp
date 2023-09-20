<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../assets/css/services.css">
</head>

<body>
    <header class="header">
        <a href="#" class="logo"> <i class="fas fa-heartbeat"></i>MGOOD</a>

        <nav class="navbar">
            <!-- <a href="./Pages/adminsign.html">Admin</a> -->
            <a href="../index.html">Home</a>
            <a href="./adminHealthtest.html">Health checks</a>
            <a href="./admindoc.html">Doctors</a>
            <a href="./adminservices.html">Blogs</a>
            <!-- <a href="./Pages/signup.html">Login</a> -->
        </nav>
        <div id="menu-btn" class="fas fa-bars"></div>
    </header>
    <div class="wrapper">


    </div>
    <footer class="footer">
        <div class="container">
            <div class="rows">
                <div class="footer-col">
                    <h4>Home</h4>
                    <ul>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Ratings</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h4>Services</h4>
                    <ul>
                        <li><a href="#">Doctors</a></li>
                        <li><a href="#">Specialist</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h4>Blogs</h4>
                    <ul>
                        <li><a href="#">consult</a></li>
                        <li><a href="#">packages</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h4>Follow Us</h4>
                    <div class="share">
                        <a href="#" class="fab fa-youtube"></a>=
                    </div>
                </div>
            </div>
        </div>


    </footer>
    <!-- <script src="../assets/js/script.js"></script> -->
    <script>
        let blogs = JSON.parse(window.localStorage.getItem("blog"))
        let card = []
        for (let i = 0; i < blogs.length; i++) {
            card.push(blogs[i])
        }
        console.log(card);
        for (let i = 0; i < card.length; i++) {


            let divone;
            divone = document.createElement("div")
            divone.setAttribute("class", "box");

            let divtwo;
            divtwo = document.createElement("img")
            divtwo.setAttribute("src", card[i]["image"])
            divtwo.setAttribute("class", "icons")
            divone.append(divtwo)

            let divthree;
            divthree = document.createElement("div")
            divone.append(divthree)

            let head;
            head = document.createElement("h3")
            head.setAttribute("id", "h3")
            head.innerText = card[i]["name"]
            divthree.append(head);

            let passage;
            passage = document.createElement("p")
            passage.setAttribute("class", "passage");
            passage.innerText = card[i]["content"]
            divthree.append(passage);

            // let a;
            // a = document.createElement("a")
            // a.setAttribute("class", "link");
            // a.setAttribute("href", "./blogdetail.html?blog_id=" + card[i]["blog_id"])

            // divthree.append(a);

            let button;
            button = document.createElement("button")
            button.innerText = "edit"
            button.setAttribute("id", card[i]["blog_id"])
            button.setAttribute("onclick", "edit(this.id)")
            button.setAttribute("class", "btn")
            divthree.append(button)

            let delbutton;
            delbutton = document.createElement("button")
            delbutton.innerText = "delete"
            delbutton.setAttribute("class", "btn")
            delbutton.setAttribute("id", card[i]["blog_id"])
            delbutton.setAttribute("onclick", "del(this.id)")
            divthree.append(delbutton)
            document.querySelector(".wrapper").append(divone)

            function edit(e) {

                let editId = []
                let edit = e;
                console.log(edit)

                let editobject = {
                    blog_id: edit
                }
                console.log(editobject)
                editId.push(editobject)

                console.log(editId)

                localStorage.setItem("editid", JSON.stringify(editId));
                window.location.href = "../Pages/blogedit.html"
            }
            let array = JSON.parse(localStorage.getItem("blog"))
            let blogid = JSON.parse(localStorage.getItem("editid"))
            console.log(blogid)

            function del(d) {
                let blogs = array.find(function (b) {
                    let edit = b["blog_id"]
                    if (edit == blogid[0]["blog_id"]) {
                        return true;
                    }
                })
                console.log(blogs)
                let dlt = array.indexOf(blogs)
                let dle = confirm("Are you sure you want to delete this blog")
                if (dle !== true) {
                    return
                }
                else {
                    array.splice(dlt, 1)
                    window.localStorage.setItem("blog", JSON.stringify(array))
                    location.reload()
                }

            }
        }


    </script>
</body>

</html>