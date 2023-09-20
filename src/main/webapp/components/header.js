let rootpath = window.location.origin
let admin = rootpath + "/Pages/adminlogin.html"
let contact = rootpath + "/Pages/docsign.jsp"
let patient = "./login.jsp"
let home = rootpath + "/pages/doctor0.jsp"
let doctors = rootpath + "/pages/doctor.jsp"
let healthtest = rootpath + "/pages/healthtest.jsp"
let blogs = rootpath + "/pages/services.jsp"
let history = rootpath + "/pages/patientapphistory.jsp"
let indexpage = rootpath + "index.jsp"


let getuser = JSON.parse(localStorage.getItem("user_id"))
let beforelogin = ` <a href="#" class="logo"> <i class="fas fa-heartbeat"></i>MGOOD</a>
<nav class="navbar">
    <a href="${admin}">Admin</a>
    <a href="${contact}">Doctor login</a>
    <a href="${patient}">User login</a>
</nav>
<div id="menu-btn" class="fas fa-bars"></div>`
console.log(beforelogin )

let after_login =

    `
    <a href="#" class="logo"> <i class="fas fa-heartbeat"></i>MGOOD</a>

    <nav class="navbar">
    <a href="${home}">Home</a>
        <a href="${doctors}">Doctors</a>
        <a href="${healthtest}">Health test</a>
        <a href="${blogs}">Blogs</a>
        <a href="/pages/patientapphistory.html?userid=${getuser}">Booking history</a>
        <a href ="#" onclick = "logout_link()">logout</a>
        <a href="#"><i class="fa fa-shopping-cart"></i></a>
        <img onclick="profile()"  id="random_img">
    </nav>
    <div id="menu-btn" class="fas fa-bars"></div>

`

function nav_head() {
    let nav = JSON.parse(localStorage.getItem("login_user"));
    let loghead = document.getElementById("header");
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


    let data = JSON.parse(localStorage.getItem("user"));
    console.log(data);
    let mail = JSON.parse(localStorage.getItem("login_user"));
    console.log(mail);
    let gmail = data.find(function (profile) {
        console.log(profile["email"])
        if (mail == profile["email"]) {
            return true;
        }
    })

    console.log(gmail);
    let randomimg = document.getElementById("random_img");
    randomimg.setAttribute("src", gmail["image"]);

}



function logout_link() {
    if (confirm("Are you sure you want to logout?")) {
        localStorage.removeItem("login_user");
        window.location.href = "LogoutServlet";
    }
    console.log(indexpage)
}


function profile(){
	window.location.href = "ProfileServlet";
}

