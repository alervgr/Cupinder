/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function mostrarGif() {
    document.getElementById("overlay").style.display = "block"; // muestra la capa
    var img = document.createElement("img"); // crea un elemento de imagen
    img.id = "gifoins";
    img.src = "./IMG/pepematch.gif"; // establece la ruta al GIF
    img.style.position = "fixed"; // establece la posición de la imagen como fija
    img.style.top = "50%"; // coloca la imagen en el centro vertical
    img.style.left = "50%"; // coloca la imagen en el centro horizontal
    img.style.transform = "translate(-50%, -50%)"; // centra la imagen
    img.style.borderRadius = "50%";
    document.body.appendChild(img); // agrega la imagen al cuerpo del documento

    setTimeout(function () {
        ocultarGif();
    }, 1850); // llama la función ocultarGif() después de 2 segundos (2000 milisegundos)
}

function ocultarGif() {
    var img = document.getElementById("gifoins"); // obtiene la primera imagen (el GIF)
    img.remove();
    document.getElementById("overlay").style.display = "none"; // muestra la capa
}
