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
        <script src="https://kit.fontawesome.com/3e2086bcb1.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
        <link rel="shortcut icon" href="./IMG/icono.png" type="image/gif">
        <title>JSP Page</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light sticky-top" style="background-color: #e8a598;">
            <div class="container-fluid">
                <a class="navbar-brand" href="<s:url action="volverInicio"></s:url>" style="font-size: 22pt"><img src="./IMG/cupinder_logo1.png" alt="CUPINDER" height="80"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link" aria-current="page" href="<s:url action="haztePremium"></s:url>">¡Hazte premium!</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="<s:url action="acercaDeNosotros"></s:url>">Acerca de nosotros</a>
                            </li>
                        <s:if test="%{#session.user.rol == 'Admin'}">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    Administración
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="#">Gestión de usuarios</a></li>
                                    <li><a class="dropdown-item" href="#">Gestión de intereses</a></li>
                                </ul>
                            </li>
                        </s:if>
                    </ul>
                    <s:if test="%{#session.user != null}">
                        <div class="dropstart ms-auto mt-2">
                            <a href="#" class="d-flex align-items-center justify-content-center link-dark text-decoration-none dropdown-toggle" id="dropdownUser3" data-bs-toggle="dropdown" aria-expanded="false">
                                <img src="${pageContext.request.contextPath}${session.user.fotoPerfil}" alt="mdo" width="33" height="33" class="rounded-circle">
                            </a>
                            <ul class="dropdown-menu text-small shadow" aria-labelledby="dropdownUser3">
                                <li><a class="dropdown-item" href="#"><i class="fa-solid fa-heart"></i> Buscar pareja</a></li>
                                <li><a class="dropdown-item" href="#"><i class="fa-solid fa-fire"></i> Matches</a></li>
                                <li><a class="dropdown-item" href="#"><i class="fa-solid fa-fire"></i> Matches</a></li>
                                <li><a class="dropdown-item" href="<s:url action="irChat"/>"><i class="fa-solid fa-user"></i> Chats</a></li>
                                <li><hr class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="<s:url action="logOutUsuario"/>"><i class="fa-solid fa-right-from-bracket"></i> Cerrar sesión</a></li>
                            </ul>
                            <p class="pt-1">Bienvenido, <s:property value="%{#session.user.usuario}"></s:property></p>
                            </div>
                    </s:if>
                    <s:else>
                        <a class="btn btn-outline-light ms-auto"  href="<s:url action="redirectLogin"/>" style="font-size: 15pt;">Iniciar sesión</a>
                    </s:else>
                </div>
            </div>
        </nav>
    </body>
</html>
