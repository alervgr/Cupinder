<%-- 
    Document   : header
    Created on : 22-abr-2023, 4:29:14
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
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light sticky-top" style="background-color: #e8a598;">
            <div class="container-fluid">
                <a class="navbar-brand" href="<s:url action="volverInicio"></s:url>" style="font-size: 22pt">CUPINDER</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" aria-current="page" href="<s:url action="haztePremium"></s:url>">¡Hazte premium!</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Acerca de nosotros</a>
                        </li>
                    </ul>
                    <a class="btn btn-outline-light ms-auto"  href="<s:url action="redirectLogin"/>" style="font-size: 15pt;">Iniciar sesión</a>
                </div>
            </div>
        </nav>
    </body>
</html>
