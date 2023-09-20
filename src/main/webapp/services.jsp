<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../assets/css/services.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
</head>

<body>
    <header class="header" id="header">

    </header>
    <div class="wrapper">
        <!-- <div class="box">
            <div class="icons">01</div>
            <div class="content">
                <h3>Periods blogs</h3>
                <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quos distinctio veritatis unde eligendi
                    dignissimos voluptatem dolorem similique consectetur reprehenderit nobis, vel officiis nihil esse
                    nisi sit quas molestiae aperiam quod!</p>
                <a href="#">Read more</a>
            </div>
        </div>
        <div class="box">
            <div class="icons">02</div>
            <div class="content">
                <h3>Periods blogs</h3>
                <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quos distinctio veritatis unde eligendi
                    dignissimos voluptatem dolorem similique consectetur reprehenderit nobis, vel officiis nihil esse
                    nisi sit quas molestiae aperiam quod!</p>
                <a href="#">Read more</a>
            </div>

        </div>
        <div class="box">
            <div class="icons">03</div>
            <div class="content">
                <h3>Periods blogs</h3>
                <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quos distinctio veritatis unde eligendi
                    dignissimos voluptatem dolorem similique consectetur reprehenderit nobis, vel officiis nihil esse
                    nisi sit quas molestiae aperiam quod!</p>
                <a href="#">Read more</a>
            </div>
        </div>
        <div class="box">
            <div class="icons">03</div>
            <div class="content">
                <h3>Periods blogs</h3>
                <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quos distinctio veritatis unde eligendi
                    dignissimos voluptatem dolorem similique consectetur reprehenderit nobis, vel officiis nihil esse
                    nisi sit quas molestiae aperiam quod!</p>
                <a href="#">Read more</a>
            </div>
        </div>
        <div class="box">
            <div class="icons">03</div>
            <div class="content">
                <h3 id="h3">Periods blogs</h3>
                <p class="passage">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quos distinctio veritatis
                    unde eligendi
                    dignissimos voluptatem dolorem similique consectetur reprehenderit nobis, vel officiis nihil esse
                    nisi sit quas molestiae aperiam quod!</p>
                <a href="#" class="link">Read more</a>
            </div>
        </div>
        <div class="box">
            <div class="icons">03</div>
            <div class="content">
                <h3>Periods blogs</h3>
                <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quos distinctio veritatis unde eligendi
                    dignissimos voluptatem dolorem similique consectetur reprehenderit nobis, vel officiis nihil esse
                    nisi sit quas molestiae aperiam quod!</p>
                <a href="#">Read more</a>
            </div>
        </div> -->

    </div>
    <script src="../components/header.js">

    </script>

    <script>
        let read = JSON.parse(window.localStorage.getItem("blog"))
        let card = []
        for (let i = 0; i < read.length; i++) {
            card.push(read[i])
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

            let a;
            a = document.createElement("a")
            a.setAttribute("class", "link");
            a.setAttribute("href", "./blogdetail.html?blog_id=" + card[i]["blog_id"])
            // a.innertext = "Readmore"
            divthree.append(a);

            let button;
            button = document.createElement("button")
            button.innerText = "viewmore"
            button.setAttribute("class", "btn")
            a.append(button)
            document.querySelector(".wrapper").append(divone)


        }
    </script>






    <script>
        nav_head()
    </script>
</body>

</html>