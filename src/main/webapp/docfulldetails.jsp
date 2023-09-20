<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../assets/css/doctor.css">

<body>
    <header class="header" id="header">

    </header>
    <div class="container">
        <form class="nosubmit">
            <input class="nosubmit" id="search" type="search" placeholder="Search...">
        </form>
    </div>

    <div class="main">
        <!-- <div class="wrapper">
            <div class="img1">
                <img src="../assets/images/womendoc1.jpg" width="110" height="110">
            </div>
            <div>

                <h2 id="user">Dr.Seetha</h2>
                <p class="content">Gynecologist/ Obstetrician<br>
                    32 Years Experience Overall<br>
                    Jayanagar 4 Block - Mgood<br>
                </p>



                <p class="rate"><b>92%</b></p>

            </div>
            <div>
                <a class="btn" href="../pages/payment.html">Consult now</a>
            </div>
        </div>

        <div class="wrapper">
            <div class="img1">
                <img src="../assets/images/womendoc1.jpg" width="110" height="110">
            </div>
            <div>

                <h2 id="user">Dr.Seetha</h2>
                <p class="content">Gynecologist/ Obstetrician<br>
                    32 Years Experience Overall<br>
                    Jayanagar 4 Block - Mgood<br>
                </p>



                <p class="rate"><b>92%</b></p>

            </div>
            <div>
                <a class="btn" href="../pages/payment.html">Consult now</a>
            </div>
        </div>
        <div class="wrapper">
            <div class="img1">
                <img src="../assets/images/womendoc1.jpg" width="110" height="110">
            </div>
            <div>

                <h2 id="user">Dr.Seetha</h2>
                <p class="content">Gynecologist/ Obstetrician<br>
                    32 Years Experience Overall<br>
                    Jayanagar 4 Block - Mgood<br>
                </p>



                <p class="rate"><b>92%</b></p>

            </div>
            <div>
                <a class="btn" href="../pages/payment.html">Consult now</a>
            </div>
        </div>
        <div class="wrapper">
            <div class="img1">
                <img src="../assets/images/womendoc1.jpg" width="110" height="110">
            </div>
            <div>

                <h2 id="user">Dr.Seetha</h2>
                <p class="content">Gynecologist/ Obstetrician<br>
                    32 Years Experience Overall<br>
                    Jayanagar 4 Block - Mgood<br>
                </p>



                <p class="rate"><b>92%</b></p>

            </div>
            <div>
                <a class="btn" href="../pages/payment.html">Consult now</a>
            </div>
        </div> -->
    </div>
    <script>
        let card = []

        let card_div;
        let div1;
        let image;
        let div2;
        let heading;
        let passage;
        let passage2;
        let btn;
        let a;

        let create_card = JSON.parse(localStorage.getItem("new_card"));
        console.log(create_card);
        for (let i = 0; i < create_card.length; i++) {
            card.push(create_card[i]);
            console.log(card);
        }

        for (let i = 0; i < card.length; i++) {
            // box
            card_div = document.createElement("div");
            card_div.setAttribute("class", "wrapper");
            // a tag
            div1 = document.createElement("div");
            div1.setAttribute("class", "img1");
            card_div.append(div1);
            // image
            image = document.createElement("img");
            image.setAttribute("class", "img1");
            image.setAttribute("src", card[i]["image"]);
            image.setAttribute("alt", "image");
            div1.append(image);
            // star
            div2 = document.createElement("div");
            card_div.append(div2);
            // rating
            heading = document.createElement("h2");
            heading.setAttribute("id", "user");
            heading.innerText = card[i]["name"]
            div2.append(heading);
            // title
            passage = document.createElement("p");
            passage.setAttribute("class", "content");
            passage.innerText = card[i]["education"]
            div2.append(passage);
            // a tag
            passage2 = document.createElement("p");
            passage2.setAttribute("class", "rate");
            passage2.innerText = card[i]["rate"]
            div2.append(passage2);
            // button
            btn = document.createElement("div");
            card_div.append(btn);

            a = document.createElement("a");
            a.setAttribute("class", "btn");
            a.setAttribute("href", "../Pages/doctordetail.html?user_id=" + card[i]["doc_id"])
            a.innerText = "Consult Now"
            btn.append(a);
            document.querySelector(".main").append(card_div);

            let wrapper = document.getElementsByClassName("wrapper")
            search.addEventListener("input", () => {
                for (let i = 0; i < wrapper.length; i++) {
                    let search_input = wrapper[i]
                    if (search_input.innerHTML.toLowerCase().includes(search.value.toLowerCase())) {
                        search_input.style.display = "block"
                    }
                    else {
                        search_input.style.display = "none"
                    }
                }
            })




        }
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