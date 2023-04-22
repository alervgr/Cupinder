<%-- 
    Document   : footer
    Created on : 22-abr-2023, 4:41:22
    Author     : alervgr
--%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <link href="./CSS/stylesheet.css" rel="stylesheet">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <footer class="py-3 my-4">
                <ul class="nav justify-content-center border-bottom pb-3 mb-3">
                    <li class="nav-item"><a href="<s:url action="volverInicio"></s:url>" class="nav-link px-2 text-muted">Inicio</a></li>
                    <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Características</a></li>
                    <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Precios</a></li>
                    <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">FAQs</a></li>
                    <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Acerca</a></li>
                </ul>
                <p class="text-center text-muted">© 2023 <a href="#" class="px-2 text-muted" >Viala, Inc</a></p>
            </footer>
        </div>
    </body>
</html>
