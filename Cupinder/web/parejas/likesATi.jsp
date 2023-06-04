
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Likes</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/pareja.css" />
        <script src="./JS/goUpButton.js"></script>
        <script src="${pageContext.request.contextPath}/JS/gifMatch.js" type="text/javascript"></script>
    </head>
    <s:if test="%{#session.user.rol == 'Free'}">
        <s:action name="haztePremium" executeResult="true"></s:action>
    </s:if>
    <s:else>
        <body>
            <s:if test="%{matchPareja}">
                <script>
                    document.addEventListener("DOMContentLoaded", function () {
                        mostrarGif();
                    });
                </script>
                <s:set var="matchPareja" value="false"></s:set>
            </s:if>
            <jsp:include page="../HEADER/header.jsp" />
            <div class="container-fluid pt-3 pb-3" style="background-color: #f8edeb; min-height: 79vh">
                <div class="container pb-5">
                    <div class="row pb-5 justify-content-center">
                        <s:if test="%{listaUsuariosLT.isEmpty()}">
                            <div class="text-center">                            
                                <h2>¡No has recibido like aún!</h2><br><h4>Se está cocinando, estará listo en unos momentos.</h4>
                            </div>
                        </s:if>
                        <s:else>

                            <s:iterator value="listaUsuariosLT" var="usuario">
                                <div class="col-lg-4" style="height: 35vh; width: 35vh">
                                    <div class="card cardpareja p-0 w-100 h-100 m-2">
                                        <div class="card-image h-100">
                                            <img src="${pageContext.request.contextPath}<s:property value="#usuario.fotoPerfil"></s:property>"
                                                 alt="" class="h-100">
                                            </div>
                                            <div class="card-content d-flex flex-column align-items-center">
                                                <h4 class="pt-2"><s:property value="#usuario.nombre"></s:property></h4>
                                            <h5><s:property value="#usuario.ocupacion"></s:property>, <s:property value="#usuario.edad"></s:property> años.</h5>

                                                <ul class="social-icons d-flex justify-content-center">
                                                    <li>
                                                    <s:url id="url" action="obsPerfil">
                                                        <s:param name="usuarioId" value="#usuario.id"></s:param>
                                                    </s:url>
                                                    <s:a href="%{url}">
                                                        <span><i class="fa-sharp fa-solid fa-eye" style="color: #f2f2f2;"></i></span>
                                                        </s:a>
                                                </li>
                                                <li>
                                                    <s:url id="url" action="darLikeL">
                                                        <s:param name="usuarioId" value="#usuario.id"></s:param>
                                                    </s:url>
                                                    <s:a href="%{url}">
                                                        <span><i class="fa-sharp fa-regular fa-heart" style="color: #b30000;"></i></span>
                                                        </s:a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </s:iterator>
                        </s:else>
                    </div>
                </div>
            </div>
        </div>
        <div id="overlay" style="display:none;position:absolute;top:0;left:0;width:100%;height:100%;background-color:#FFF;opacity:0.5;"></div>
        <jsp:include page="../FOOTER/footer.jsp" />

        <!-- BOTÓN SCROLL TO TOP -->
        <button onclick="scrollToTop()" id="goUpButton" class="btn position-fixed" title="Ir arriba">
            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-arrow-up"
                 viewBox="0 0 16 16" alt="Flecha hacia arriba">
            <path fill-rule="evenodd"
                  d="M8 15a.5.5 0 0 0 .5-.5V2.707l3.146 3.147a.5.5 0 0 0 .708-.708l-4-4a.5.5 0 0 0-.708 0l-4 4a.5.5 0 1 0 .708.708L7.5 2.707V14.5a.5.5 0 0 0 .5.5z" />
            </svg>
        </button>

    </body>
</s:else>
</html>
