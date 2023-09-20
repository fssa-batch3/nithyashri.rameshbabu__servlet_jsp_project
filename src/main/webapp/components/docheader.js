let data = JSON.parse(localStorage.getItem("doctor"));
let mail = JSON.parse(localStorage.getItem("doctor_login"));

let gmail = data.find(function (profile) {
    console.log(profile["mail"])
    if (mail == profile["mail"]) {
        return true;
    }
})

console.log(gmail["doctor_id"]);

let rootpath = window.location.origin
let admin = rootpath + "/Pages/adminlogin.html"
let contact = rootpath + "/Pages/docsign.html"
let patient = rootpath + "/Pages/login.html"
let home = rootpath + "/pages/successdoctor.html"
// let Appointments = rootpath + "../Pages/appshow.html?docid=" + gmail["doctor_id"]

let Articles = rootpath + ""
let indexpage = rootpath + "/pages/doclog.html"



let beforelogin = ` <a href="#" class="logo"> <i class="fas fa-heartbeat"></i>MGOOD</a>
<nav class="navbar">
    <a href="${admin}">Admin</a>
    <a href="${contact}">Doctor login</a>
    <a href="${patient}">User login</a>
</nav>
<div id="menu-btn" class="fas fa-bars"></div>`


let after_login =

    `
    <a href="#" class="logo"> <i class="fas fa-heartbeat"></i>MGOOD</a>

    <nav class="navbar">
    <a href="${home}">Home</a>
        <a href= "../Pages/appshow.html?docid=${gmail["doctor_id"]}">Appointments</a>
        <a href="${Articles}">Articles</a>
        <a href ="#" onclick = "logout_link()">logout</a>
        <img onclick="docprofile()"  id="docrandom_img">
    </nav>
    <div id="menu-btn" class="fas fa-bars"></div>
`

function docnav_head() {
    let nav = JSON.parse(localStorage.getItem("doctor"));
    let loghead = document.getElementById("docheader");
    if (!nav) {
        loghead.innerHTML = beforelogin;
    }
    else {
        loghead.innerHTML = after_login;

    }

    const menu = document.querySelector("#menu-btn");
    const navbar = document.querySelector(".navbar");

    menu.onclick = () => {
        menu.classList.toggle("fa-times");
        navbar.classList.toggle("active");
    };

    window.onscroll = () => {
        menu.classList.remove("fa-times");
        navbar.classList.remove("active");
    };


    let data = JSON.parse(localStorage.getItem("doctor"));
    console.log(data);
    let mail = JSON.parse(localStorage.getItem("doctor_login"));
    console.log(mail);
    let gmail = data.find(function (profile) {
        console.log(profile["mail"])
        if (mail == profile["mail"]) {
            return true;
        }
    })

    console.log(gmail);
    let randomimg = document.getElementById("docrandom_img");
    randomimg.setAttribute("src", gmail["doctor_img"]);

}



function logout_link() {
    if (confirm("Are you sure you want to logout?")) {
        localStorage.removeItem("doctor_login");
        window.location.href = `${indexpage} `
    }
    console.log(indexpage)
}
