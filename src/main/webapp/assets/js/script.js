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


