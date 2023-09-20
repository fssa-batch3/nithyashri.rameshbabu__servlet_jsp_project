<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../assets/css/admindoc.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
</head>

<body>

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


        <a href="./form.html" id="addbtn">Create Doctor</a>
        <div class="main">
            <div class="wrapper">
                <!-- <div class="img1">
                    <img src="../assets/images/womendoc1.jpg" width="110" height="110">
                </div>
                <div>

                    <h2 id="user">Dr.Seetha</h2>
                    <p class="content">Gynecologist/ Obstetrician<br>
                        32 Years Experience Overall<br>
                        Jayanagar 4 Block - Mgood<br>
                    </p>




                    <p class="rate"><b>92%</b></p> -->

            </div>
            <div>
                <!-- <a class="btn" href="../pages/payment.html">Consult now</a> -->
                <!-- <button>EDIT</button> -->
                <!-- <button onclick="del()">Delete</button> -->
            </div>
        </div>
        </div>

        <script>
            let new_card = JSON.parse(localStorage.getItem("new_card"))
            for (let i = 0; i < new_card.length; i++) {


                card_div = document.createElement("div");
                card_div.setAttribute("class", "wrapper");
                // a tag
                div1 = document.createElement("div");
                div1.setAttribute("class", "img1");
                card_div.append(div1);
                // image
                image = document.createElement("img");
                image.setAttribute("class", "img1");
                image.setAttribute("src", new_card[i]["image"]);
                image.setAttribute("alt", "image");
                div1.append(image);
                // star
                div2 = document.createElement("div");

                card_div.append(div2);
                // rating
                heading = document.createElement("h2");
                heading.setAttribute("id", "user");
                heading.innerText = new_card[i]["name"]
                div2.append(heading);
                // title
                passage = document.createElement("p");
                passage.setAttribute("class", "content");
                passage.innerText = new_card[i]["education"]
                div2.append(passage);
                // a tag
                passage2 = document.createElement("p");
                passage2.setAttribute("class", "rate");
                passage2.innerText = new_card[i]["rate"]
                div2.append(passage2);
                // button
                btn = document.createElement("div");
                btn.setAttribute("class", "divbtn")
                card_div.append(btn);

                a = document.createElement("a");
                a.setAttribute("class", "btn");
                a.setAttribute("href", "../Pages/edit.html?doc_id=" + new_card[i]["doc_id"])
                a.setAttribute("onclick", "editid(this.id)")
                a.setAttribute("id", new_card[i]["doc_id"])
                a.innerText = "Edit"
                btn.append(a);

                delbutton = document.createElement("button")
                delbutton.innerText = "Delete"
                delbutton.setAttribute("class", "btn")
                delbutton.setAttribute("id", new_card[i]["doc_id"])
                delbutton.setAttribute("onclick", "del(this.id)")
                btn.append(delbutton)


                // b = document.createElement("a");
                // b.setAttribute("href", "");
                // b.setAttribute("class", "btn");
                // btn.append(b);

                document.querySelector(".main").append(card_div);

            }


            function editid(e) {

                let productId = []
                let edit = e;
                // console.log(edit)

                let editobject = {
                    doc_id: edit
                }
                // console.log(editobject)
                productId.push(editobject)

                console.log(productId)

                localStorage.setItem("id", JSON.stringify(productId));
                window.location.href = "../Pages/edit.html"
            }
            let array = JSON.parse(localStorage.getItem("new_card"))
            let docid = JSON.parse(localStorage.getItem("id"))
            console.log(docid)

            function del(d) {
                let docs = array.find(function (d) {
                    let edit = d["doc_id"]
                    if (edit == docid[0]["doc_id"]) {
                        return true;
                    }
                })
                console.log(docs)
                let dlt = array.indexOf(docs)
                let dle = confirm("Are you sure you want to delete this blog")
                if (dle !== true) {
                    return
                }
                else {
                    array.splice(dlt, 1)
                    window.localStorage.setItem("new_card", JSON.stringify(array))
                    location.reload()
                }

            }







        </script>
        <script src="../assets/js/script.js"></script>

    </body>

</html>