<%-- 
    Document   : premium
    Created on : 22-abr-2023, 18:09:37
    Author     : alervgr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <title>JSP Page</title>
        <link href="./premium/premium.css" rel="stylesheet"  type="text/css">
    </head>
    <body>
        <jsp:include page="../HEADER/header.jsp" />
        <div class="container-fluid" style="background-color: #f8edeb;height: 79vh;">
            <div class="row text-center pb-2 pt-2">
                <h1>Tarifas</h1>
                <p class="fs-5 text-muted">ASdasd</p>
            </div>
            <div class="row mb-2 text-center justify-content-center">
                <div class="col-3">
                    <div class="card mb-4 rounded-3 shadow-sm">
                        <div class="card-header py-3">
                            <h4 class="my-0 fw-normal">Gratuito</h4>
                        </div>
                        <div class="card-body">
                            <h1 class="card-title pricing-card-title">0€<small class="text-muted fw-light">/mes</small></h1>
                            <ul class="list-unstyled mt-3 mb-4">
                                <li>10 usuarios incluídos</li>
                                <li>2 GB de almacenamiento</li>
                                <li>Emails</li>
                                <li>Acceso al centro de ayuda</li>
                            </ul>
                            <button type="button" class="w-100 btnRegistroP btn btn-primary">Registrate gratis</button>
                        </div>
                    </div>
                </div>
                <div class="col-3">
                    <div class="card mb-4 rounded-3 shadow-sm border-dark">
                        <div class="card-header py-3 text-white bg-dark border-dark">
                            <h4 class="my-0 fw-normal">Premium</h4>
                        </div>
                        <div class="card-body">
                            <h1 class="card-title pricing-card-title">5€<small class="text-muted fw-light">/mes</small></h1>
                            <ul class="list-unstyled mt-3 mb-4">
                                <li>30 usuarios incluídos</li>
                                <li>15 GB de almacenamiento</li>
                                <li>Ayuda vía Email y Teléfono</li>
                                <li>Acceso al centro de ayuda</li>
                            </ul>
                            <button type="button" class="w-100 btn btnRegistroP">Comprar</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="table-responsive">
                <table class="table text-center">
                    <thead>
                        <tr>
                            <th style="width: 34%;"></th>
                            <th style="width: 33%;">Gratuito</th>
                            <th style="width: 33%;">Premium</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row" class="text-start">Público</th>
                            <td><img width="24" height="24" src="https://cdn-icons-png.flaticon.com/512/25/25643.png"></td>
                            <td><img width="24" height="24" src="https://cdn-icons-png.flaticon.com/512/25/25643.png"></td>
                        </tr>
                        <tr>
                            <th scope="row" class="text-start">Privado</th>
                            <td></td>
                            <td><svg class="bi" width="24" height="24"><use xlink:href="#check"></use></svg></td>
                            <td><svg class="bi" width="24" height="24"><use xlink:href="#check"></use></svg></td>
                        </tr>
                    </tbody>
                    <tbody>
                        <tr>
                            <th scope="row" class="text-start">Permisos</th>
                            <td><svg class="bi" width="24" height="24"><use xlink:href="#check"></use></svg></td>
                            <td><svg class="bi" width="24" height="24"><use xlink:href="#check"></use></svg></td>
                            <td><svg class="bi" width="24" height="24"><use xlink:href="#check"></use></svg></td>
                        </tr>
                        <tr>
                            <th scope="row" class="text-start">Compartido</th>
                            <td></td>
                            <td><svg class="bi" width="24" height="24"><use xlink:href="#check"></use></svg></td>
                            <td><svg class="bi" width="24" height="24"><use xlink:href="#check"></use></svg></td>
                        </tr>
                        <tr>
                            <th scope="row" class="text-start">Miembros ilimitados</th>
                            <td></td>
                            <td><svg class="bi" width="24" height="24"><use xlink:href="#check"></use></svg></td>
                            <td><svg class="bi" width="24" height="24"><use xlink:href="#check"></use></svg></td>
                        </tr>
                        <tr>
                            <th scope="row" class="text-start">Seguridad extra</th>
                            <td></td>
                            <td></td>
                            <td><svg class="bi" width="24" height="24"><use xlink:href="#check"></use></svg></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            </div>
            
        </div>
        <jsp:include page="../FOOTER/footer.jsp" />
    </body>
</html>
