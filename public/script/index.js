console.log("JZPIS coming up!");

document.addEventListener("DOMContentLoaded", function () {
  const links = document.querySelectorAll(".link");

  links.forEach(function (link) {
    link.addEventListener("click", function () {
      links.forEach(function (l) {
        l.classList.remove("clicked");
      });
      this.classList.add("clicked");
    });
  });
});

function updateTime() {
  var now = new Date();
  var date = now.toDateString();
  var time = now.toLocaleTimeString();
  document.getElementById("datetime").innerHTML =
    "Date: " + date + "<br>Time: " + time;
}

updateTime();
setInterval(updateTime, 1000);
