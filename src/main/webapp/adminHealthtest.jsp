<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../assets/css/adminhealthtest.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <!-- Link css -->
    <link rel="stylesheet" href="../assets/css/adminhealthtest.css">
</head>

<body>
    <header class="header">
        <a href="#" class="logo"> <i class="fas fa-heartbeat"></i>MGOOD</a>

        <nav class="navbar">
            <!-- <a href="./Pages/adminsign.html">Admin</a> -->
            <a href="../index.html">Home</a>
            <a href="#">Health checks</a>
            <a href="./admin.html">Doctors</a>
            <a href="./contact.html">Contact</a>
            <a href="./services.html">Blogs</a>
            <!-- <a href="./Pages/signup.html">Login</a> -->
        </nav>
        <div id="menu-btn" class="fas fa-bars"></div>
    </header>
    <div class="container">
        <form class="nosubmit">
            <input class="nosubmit" id="search" type="search" placeholder="Search...">
        </form>
    </div>
    <div class="contain">
        <!-- <div class="card">
            <img src="../assets/images/undraw_medicine_b1ol.png" alt="Denim Jeans" style="width:100%">
            <h1>Blood test</h1>
            <p class="price">$19.99</p>
            <p>Super slim and comfy lorem ipsum lorem jeansum. Lorem jeamsun denim lorem
                jeansum.
            </p>
            <button>Add to Cart</button>
        </div>
        <div class="card">
            <img src="../assets/images/undraw_medicine_b1ol.png" alt="Denim Jeans" style="width:100%">
            <h1>Blood test</h1>
            <p class="price">$19.99</p>
            <p>Super slim and comfy lorem ipsum lorem jeansum. Lorem jeamsun denim lorem
                jeansum.
            </p>
            <button>Add to Cart</button>
        </div>
        <div class="card">
            <img src="../assets/images/undraw_medicine_b1ol.png" alt="Denim Jeans" style="width:100%">
            <h1>Blood test</h1>
            <p class="price">$19.99</p>
            <p>Super slim and comfy lorem ipsum lorem jeansum. Lorem jeamsun denim lorem
                jeansum.
            </p>
            <button>Add to Cart</button>
        </div>
        <div class="card">
            <img src="../assets/images/undraw_medicine_b1ol.png" alt="Denim Jeans" style="width:100%">
            <h1>Blood test</h1>
            <p class="price">$19.99</p>
            <p>Super slim and comfy lorem ipsum lorem jeansum. Lorem jeamsun denim lorem
                jeansum.
            </p>
            <button>Add to Cart</button>
        </div> -->



    </div>

    <script>
        let testcard = []
        let divcard;
        let divimg;
        let divh;
        let pass;
        let passtwo;
        let butt;
        let create_test = JSON.parse(localStorage.getItem("new_test"));
        console.log(create_test);
        for (let i = 0; i < create_test.length; i++) {
            testcard.push(create_test[i]);
            console.log(testcard);
        }
        for (let i = 0; i < testcard.length; i++) {

            divcard = document.createElement("div")
            divcard.setAttribute("class", "card");


            divimg = document.createElement("img")
            divimg.setAttribute("class", "image")
            divimg.setAttribute("src", testcard[i]["image"])
            divcard.append(divimg);

            divh = document.createElement("h1")
            divh.setAttribute("id", "h1")
            divh.innerText = testcard[i]["name"]
            divcard.append(divh);

            pass = document.createElement("p")
            pass.setAttribute("class", "price")
            pass.innerText = testcard[i]["rate"]
            divcard.append(pass);

            passtwo = document.createElement("p")
            passtwo.setAttribute("class", "matter")
            passtwo.innerText = testcard[i]["education"]
            divcard.append(passtwo);


            butt = document.createElement("button")
            butt.innerText = "Edit"
            butt.setAttribute("id", testcard[i]["healthtest_id"])
            butt.setAttribute("onclick", "editids(this.id)")
            butt.setAttribute("class", "bt")
            divcard.append(butt)

            butttwo = document.createElement("button")
            butttwo.innerText = "Delete"
            butttwo.setAttribute("class", "btn")
            butttwo.setAttribute("id", testcard[i]["healthtest_id"])
            butttwo.setAttribute("onclick", "dele(this.id)")
            divcard.append(butttwo)

            document.querySelector(".contain").append(divcard);
            let card = document.getElementsByClassName("card")
            search.addEventListener("input", () => {
                for (let i = 0; i < card.length; i++) {
                    let search_input = card[i]
                    if (search_input.innerHTML.toLowerCase().includes(search.value.toLowerCase())) {
                        search_input.style.display = "block"
                    }
                    else {
                        search_input.style.display = "none"
                    }
                }
            })
        }



        function editids(e) {

            // let testid = []
            let edit = e;
            // console.log(edit)

            // let editobject = {
            //     healthtest_id: edit
            // }
            //  console.log(editobject)
            // testid.push(editobject)

            // console.log(testid)

            localStorage.setItem("health_id", JSON.stringify(edit));
            window.location.href = "./healthtestedit.html"
        }
        function dele() {
            let new_test = JSON.parse(window.localStorage.getItem("new_test"))
            let health_id = JSON.parse(window.localStorage.getItem("health_id"))
            console.log(new_test);
            let body = new_test.find(function (h) {
                let edit = h["healthtest_id"]
                console.log(edit);

                if (edit == health_id) {
                    return true;
                }
            })
            console.log(body)
            let dlt = new_test.indexOf(body)
            let dle = confirm("Are you sure you want to delete this test")
            if (dle !== true) {
                return
            }
            else {
                new_test.splice(dlt, 1)
                window.localStorage.setItem("new_test", JSON.stringify(new_test))
                location.reload()
            }
        } 
    </script>
</body>

</html>