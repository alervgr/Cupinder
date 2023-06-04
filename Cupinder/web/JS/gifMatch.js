/* 
 codigo js para lanzar el gif cuando se hace match
 */


function mostrarGif() {
    document.getElementById("overlay").style.display = "block"; // muestra la capa
    var audio = document.createElement("audio");
    audio.id="pibe";
    audio.src = "./IMG/pibepiano_corto.mp3";
    audio.autoplay = "autoplay";
    document.body.appendChild(audio);
    
    var img = document.createElement("img"); // crea un elemento de imagen
    img.id = "gifoins";
    img.src = "./IMG/Sequence.gif"; // establece la ruta al GIF
    img.style.position = "fixed"; // establece la posición de la imagen como fija
    img.style.top = "50%"; // coloca la imagen en el centro vertical
    img.style.left = "50%"; // coloca la imagen en el centro horizontal
    img.style.transform = "translate(-50%, -50%)"; // centra la imagen
    img.style.borderRadius = "50%";
    document.body.appendChild(img); // agrega la imagen al cuerpo del documento

    setTimeout(function () {
        ocultarGif();
    }, 2200); // llama la función ocultarGif() después de 2 segundos (2000 milisegundos)
}

function ocultarGif() {
    var img = document.getElementById("gifoins"); 
    img.remove();
    var audio = document.getElementById("pibe");
    audio.remove();
    document.getElementById("overlay").style.display = "none"; // muestra la capa
}
