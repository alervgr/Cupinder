<%-- 
    Document   : premium
    Created on : 22-abr-2023, 18:09:37
    Author     : alervgr
--%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <title>Hazte premium</title>
        <link href="./premium/premium.css" rel="stylesheet"  type="text/css">
    </head>
    <body>
        <jsp:include page="../HEADER/header.jsp" />
        <div class="container-fluid row align-items-center justify-content-center" style="background-color: #f8edeb;height: 79vh;">
            <div class="row text-center">
                <h1>Tarifas</h1>
                <p class="fs-5 text-muted pt-5">Actualiza a nuestra versión premium para disfrutar de funciones exclusivas como ver quién te ha dado 'like', o retirar likes a tus posibles parejas.</p>
            </div>
            <div class="row mb-3 text-center justify-content-center">
                <div class="col-3">
                    <div class="card mb-4 rounded-3 shadow-sm">
                        <div class="card-header py-3">
                            <h4 class="my-0 fw-normal">Gratuito</h4>
                        </div>
                        <div class="card-body">
                            <h1 class="card-title pricing-card-title">0€<small class="text-muted fw-light">/mes</small></h1>
                            <s:if test="%{#session.user == null}">
                                <a href="#" type="button" class="w-100 btnRegistroP btn btn-primary">Registrate gratis</a>
                            </s:if>
                            <s:else>
                                <a href="#" type="button" class="w-100 btnRegistroP btn btn-primary disabled">Adquirido</a>
                            </s:else>
                        </div>
                    </div>
                </div>
                <div class="col-3">
                    <div class="card mb-4 rounded-3 shadow-sm border-dark">
                        <div class="card-header py-3 text-white bg-dark border-dark">
                            <h4 class="my-0 fw-normal">Premium</h4>
                        </div>
                        <div class="card-body">
                            <h1 class="card-title pricing-card-title">7,5€<small class="text-muted fw-light">/mes</small></h1>
                            <s:if test="%{#session.user != null}">
                                <s:if test="%{#session.user.rol == 'Free'}">
                                    <a href="#" type="button" class="w-100 btn btnRegistroP">Comprar</a>
                                </s:if>
                                <s:else>
                                    <a  type="button" class="w-100 btn btnRegistroP disabled">Adquirido</a>
                                </s:else>
                            </s:if>
                            <s:else>
                                <a href="redirectLogin" type="button" class="w-100 btn btnRegistroP">Iniciar sesion</a>
                            </s:else>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center align-items-center">
                <div class="table-responsive col-6">
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
                                <th scope="row" class="text-start">Crear perfil</th>
                                <td><i class="fa-solid fa-check-to-slot"></i></td>
                                <td><i class="fa-solid fa-check-to-slot"></i></td>
                            </tr>
                            <tr>
                                <th scope="row" class="text-start">Chatear con tus matches</th>
                                <td><i class="fa-solid fa-check-to-slot"></i></td>
                                <td><i class="fa-solid fa-check-to-slot"></i></td>
                            </tr>
                        </tbody>
                        <tbody>
                            <tr>
                                <th scope="row" class="text-start">Likes ilimitados</th>
                                <td><i class="fa-solid fa-check-to-slot"></i></td>
                                <td><i class="fa-solid fa-check-to-slot"></i></td>
                            </tr>
                            <tr>
                                <th scope="row" class="text-start">Ver quien te da like</th>
                                <td><i class="fa-solid fa-minus"></i></td>
                                <td><i class="fa-solid fa-check-to-slot"></i></td>
                            </tr>
                            <tr>
                                <th scope="row" class="text-start">Retirar like</th>
                                <td><i class="fa-solid fa-minus"></i></td>
                                <td><i class="fa-solid fa-check-to-slot"></i></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>

        </div>
        <jsp:include page="../FOOTER/footer.jsp" />
    </body>
</html>
