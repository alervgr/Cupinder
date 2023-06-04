/* 
 codigo js para el boton de subir
 */

function scrollToTop() {
    window.scrollTo({
        top: 0,
        behavior: "smooth"
    });
}

window.addEventListener("scroll", function () {
    var goUpButton = document.getElementById("goUpButton");
    if (window.pageYOffset > 100) {
        goUpButton.style.display = "block";
    } else {
        goUpButton.style.display = "none";
    }
});