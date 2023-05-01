<!doctype html>
<%@taglib prefix="s" uri="/struts-tags"%>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>CUPINDER</title>
        <link href="./CSS/stylesheet.css" rel="stylesheet">
        <script src="./JS/goUpButton.js"></script>
        <link rel="shortcut icon" href="./IMG/icono.png" type="image/gif">
    </head>
    <body>
       <jsp:include page="./HEADER/header.jsp" />

        <div class="container-fluid" style="background-color: #f8edeb;">

            <div class="row">
                <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                    </div>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="./IMG/playa.jpeg" class="d-block w-100" alt="..." style="object-fit: contain; height: 800px;">
                            <div class="carousel-caption d-none d-md-block">
                                <button type="button" class="btnRegistro btn btn-primary">Regístrate</button>
                                <div class="diapositiva">
                                    <h3>¿Estás cansado de buscar amor sin éxito?</h3>
                                    <p>¡Deja que nuestra aplicación te ayude a encontrar a tu pareja ideal en solo unos pocos pasos!</p>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="./IMG/mesa.jpeg" class="d-block w-100" alt="..." style="object-fit: contain; height: 800px;">
                            <div class="carousel-caption d-none d-md-block">
                                <button type="button" class="btnRegistro btn btn-primary">Regístrate</button>
                                <div class="diapositiva">
                                    <h3>¿Te gustaría conocer a alguien nuevo?</h3>
                                    <p>¡Únete a nuestra comunidad y comienza a chatear con personas interesantes hoy mismo!</p>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="./IMG/oins.jpeg" class="d-block w-100" alt="..." style="object-fit: contain; height: 800px;">
                            <div class="carousel-caption d-none d-md-block">
                                <button type="button" class="btnRegistro btn btn-primary">Regístrate</button>
                                <div class="diapositiva">
                                    <h3>¿Buscas amor?</h3>
                                    <p>¡Deja que nuestra aplicación te ayude a encontrar a tu pareja perfecta!</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Anterior</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Siguiente</span>
                    </button>
                </div>
            </div>

            <div class="row p-3 mt-5">
                <div class="col-md-7 align-self-center">
                    <h2 class="featurette-heading">Únete a nuestra comunidad. <span class="text-muted">Comienza a conocer personas interesantes hoy mismo.</span></h2>
                    <p class="lead">¡Regístrate ahora y descubre cómo puede cambiar tu vida la conexión en línea!</p>
                </div>
                <div class="col-md-5 text-center">
                    <img src="./IMG/noche.jpeg" class="d-block w-100" alt="..." style="object-fit: contain; height: 500px;">
                </div>
            </div>
            <div class="row p-3 pb-5">
                <div class="col-md-7 order-md-2 align-self-center">
                    <h2 class="featurette-heading">¡Míralo tú mismo! <span class="text-muted">Con nuestra aplicación,</span></h2>
                    <p class="lead">podrás conectar con personas cercanas que compartan tus intereses y preferencias. Nuestro algoritmo de emparejamiento te presentará perfiles cuidadosamente seleccionados, para que puedas encontrar a alguien con quien tengas afinidad.</p>
                </div>
                <div class="col-md-5 order-md-1 text-center">
                    <img src="./IMG/algoritmo.png" class="d-block w-100" alt="..." style="object-fit: contain; height: 500px;">
                </div>
            </div>
        </div>


        <jsp:include page="./FOOTER/footer.jsp" />



        <!-- BOTÓN SCROLL TO TOP -->
        <button onclick="scrollToTop()" id="goUpButton" class="btn position-fixed" title="Ir arriba">
            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-arrow-up"
                 viewBox="0 0 16 16" alt="Flecha hacia arriba">
            <path fill-rule="evenodd"
                  d="M8 15a.5.5 0 0 0 .5-.5V2.707l3.146 3.147a.5.5 0 0 0 .708-.708l-4-4a.5.5 0 0 0-.708 0l-4 4a.5.5 0 1 0 .708.708L7.5 2.707V14.5a.5.5 0 0 0 .5.5z" />
            </svg>
        </button>

    </body>
</html>