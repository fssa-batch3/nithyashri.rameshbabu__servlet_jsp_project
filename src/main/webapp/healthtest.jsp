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
</head>

<body>
    <header class="header" id="header">
        <!-- <a href="#" class="logo"> <i class="fas fa-heartbeat"></i>MGOOD</a>

        <nav class="navbar">

            <a href="#">Health checks</a>
            <a href="./admin.html">Doctors</a>
            <a href="./contact.html">Contact</a>
            <a href="./services.html">Blogs</a>
            <a href="#"><i class="fa fa-shopping-cart"></i></a>
      
        </nav>
        <div id="menu-btn" class="fas fa-bars"></div> -->
    </header>
    <div class="container">
        <form class="nosubmit">
            <input class="nosubmit" id="search" type="search" placeholder="Search...">
        </form>
    </div>
    <div class="contain">

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
            butt.innerText = "Add to cart"
            butt.setAttribute("class", "bt")
            butt.setAttribute("id", testcard[i]["healthtest_id"])
            butt.setAttribute("onclick", "addcart(this.id)")
            divcard.append(butt)

            buttwo = document.createElement("button")
            buttwo.innerText = "Buy now"
            buttwo.setAttribute("class", "btn")
            divcard.append(buttwo)

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
            function addcart(e) {
                let cardid = []
                let mainArr = JSON.parse(window.localStorage.getItem("new_test"))
                console.log(mainArr)
                let id = e
                console.log(id)

                let cardId = JSON.parse(localStorage.getItem("cardid"))
                console.log(cardId);
                if (localStorage.getItem("cardid") != null) {
                    cardid = JSON.parse(localStorage.getItem("cardid"));
                }
                cardid.push(id)
                localStorage.setItem("cardid", JSON.stringify(cardid))



                // for (let i = 0; i < fullcard.length; i++) {
                //     if (idCard != fullcard[i]["healthtest_id"] || fullcard[i]["null"] == "null") {
                //         cardArr.push(cart)
                //     }
                //     else {
                //         alert("already added")
                //         return
                //     }
                // }



                // let cart = mainArr.find(function (arrId) {
                //     let cartid = arrId["healthtest_id"]

                //     console.log(cartid);
                //     if (cartid == cardId) {
                //         return true
                //     }
                // })
                // console.log(cart);
                // let idCard = cart["healthtest_id"]
                // console.log(idCard);

                // let cardArr = []


                // if (localStorage.getItem("addtocart") != null) {
                //     cardArr = JSON.parse(localStorage.getItem("addtocart"));


                // }
                // cardArr.push(cart)
                // window.localStorage.setItem("addtocart", JSON.stringify(cardArr))
                // let fullcard = JSON.parse(window.localStorage.getItem("addtocart"))
                // // console.log(fullcard)

                // for (let i = 0; i < fullcard.length; i++) {
                //     if (idCard != fullcard[i]["healthtest_id"] || fullcard[i]["null"] == "null") {
                //         cardArr.push(cart)
                //     }
                //     else {
                //         alert("already added")
                //         return
                //     }
                // }


            }

            // let cart = []

            // function addcart(item) {
            //     for (let i = 0; i < cart.length; i++) {
            //         if (cart[i].healthtest_id === item)
            //     }

            // }

        }
    </script>
    <script src="../components/header.js">
    </script>
    <script>
        nav_head()
    </script>
</body>

</html>