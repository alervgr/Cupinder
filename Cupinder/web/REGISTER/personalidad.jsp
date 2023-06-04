
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario Personalidad</title>
        <link href="./premium/premium.css" rel="stylesheet"  type="text/css">
        <link rel="shortcut icon" href="./IMG/icono.png" type="image/gif">
    </head>
    <body>
        <jsp:include page="../HEADER/header.jsp" />
        <div div class="container-fluid row text-center justify-content-center" style="background-color: #f8edeb; min-height: 78vh">

            <div class="p-3 col-7 ">
                <h1>Cuéntanos un poco más sobre ti...</h1>
                <s:form action="completarTest" method="post" theme="simple">
                    <div class=" mb-2 pt-3">
                        <label for="color">¿Qué color prefieres?</label>
                        <s:select name="color" cssClass="form-control text-center" placeholder="Color" list="{'Rojo','Amarillo', 'Azul', 'Verde'}"/>                                                  
                    </div>
                    <div class=" mb-2 pt-3">
                        <label for="animal">Si fueras un animal, ¿cuál serías?</label>
                        <s:select name="animal" cssClass="form-control text-center" placeholder="Animal" list="{'León','Perro', 'Elefante', 'Gato'}"/>                                                  
                    </div>
                    <div class=" mb-2 pt-3">
                        <label for="lugar">Si pudieras elegir cualquier lugar, ¿Dónde te gustaría vivir?</label>
                        <s:select name="lugar" cssClass="form-control text-center" placeholder="Lugar" list="{'Playa','Montaña', 'Ciudad', 'Pueblo / Campo'}"/>                                                  
                    </div>
                    <div class=" mb-2 pt-3">
                        <label for="reflejo">¿Qué haces al ver tu reflejo al pasar al lado de un coche?</label>
                        <s:select name="reflejo" cssClass="form-control text-center" placeholder="Reflejo" list="{'Me miro','Lo ignoro', 'Me peino', 'Iba buscándolo, no ha sido casualidad ;)'}"/>                                                  
                    </div>
                    <div class=" mb-2 pt-3 pb-3">
                        <label for="cita">¿Cuál sería tu primera cita ideal?</label>
                        <s:select name="cita" cssClass="form-control text-center" placeholder="Cita" list="{'¡Salir de fiesta!','Restaurante romántico', 'Cine con palomitas', 'Escape Room / Salón de recreativos'}"/>                                                  
                    </div>
                    <div class=" mb-2 pt-3 pb-3">
                        <label for="interesesSeleccionados" class="pb-3">Selecciona tus intereses:</label><br>
                        <s:checkboxlist list="intereses" name="interesesSeleccionados" cssClass="form-check-input m-2"/>
                    </div>

                    <button type="submit" class="btn btnRegistro">Enviar respuesta</button>
                </s:form>

            </div>

        </div>
        <jsp:include page="../FOOTER/footer.jsp" />
    </body>
</html>
