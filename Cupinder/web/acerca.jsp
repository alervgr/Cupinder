<%-- 
    Document   : acerca
    Created on : 28-abr-2023, 21:59:30
    Author     : alervgr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Acerca de nosotros</title>
    </head>
    <body>
        <jsp:include page="./HEADER/header.jsp" />
        <div class="container-fluid pt-5" style="background-color: #f8edeb; height: 79vh">
            <div class="row text-center p-5">
                <div class="col-6">
                    <h1 class="pt-5">Sobre nosotros</h1>
                    <p class="pt-5">Somos un sitio web de búsqueda de pareja enfocado en la comunidad estudiantil de la Universidad Pablo de Olavide. Nuestra plataforma te permite encontrar personas con gustos e intereses similares a los tuyos, así como también tener conversaciones privadas con tus matches.</p>

                    <h2 class="pt-5">¿Cómo funciona?</h2>
                    <p class="pt-5">Para registrarte en nuestra plataforma, simplemente completa un breve formulario con tus gustos, personalidad y facultad en la que estudias. A partir de esa información, nuestro algoritmo de compatibilidad te mostrará perfiles de otras personas que podrían ser compatibles contigo. Si encuentras a alguien que te interesa, puedes dar "like" a su perfil. Si esa persona también da "like" a tu perfil, habrá un "match" y podrán comenzar a conversar.</p>
                </div>
                <div class="col-6 align-self-center pt-5">
                    <img class="w-100" src="./IMG/acerca.jpg">
                </div>
            </div>
        </div>
        <jsp:include page="./FOOTER/footer.jsp" />
    </body>
</html>
