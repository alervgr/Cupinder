<%-- 
    Document   : perfilUsuario
    Created on : 02-jun-2023, 17:55:49
    Author     : 34647
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/estilo.css" />
    </head>
    <body>
        <jsp:include page="../HEADER/header.jsp" />
        <section style="background-color: #f8edeb">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 mb-4 mb-sm-5">
                        <div class="perfilcard card card-style1 border-0">
                            <div class="card-body p-1-9 p-sm-2-3 p-md-6 p-lg-7">
                                <div class="row align-items-center">
                                    <div class="col-lg-6 mb-4 mb-lg-0 ps-4">
                                        <img src="${pageContext.request.contextPath}${u.fotoPerfil}" alt="..." height="550px" style="max-width: 550px">
                                    </div>
                                    <div class="col-lg-6 px-xl-10 pe-4">
                                        <div class="d-lg-inline-block py-1-9 px-1-9 px-sm-6 mb-1-9 rounded w-100" style="background-color: #e8a598">
                                            <h3 class="h2 text-white mb-0"><s:property value="%{u.nombre}"></s:property> <s:property value="%{u.apellidos}"></s:property></h3>
                                            <span class="text-secondary"><s:property value="%{u.usuario}"></s:property>  <s:if test="%{u.dni != null}"><span>Verificada <i class="fa-solid fa-circle-check"></i></span></s:if></span>
                                            </div>
                                            <ul class="list-unstyled mb-1-9">
                                                    <li class="mb-2 mb-xl-3 display-28"><span class="display-26 text-secondary me-2 font-weight-600">Ocupación:</span> <s:property value="%{u.ocupacion}"></s:property></li>
                                            <li class="mb-2 mb-xl-3 display-28"><span class="display-26 text-secondary me-2 font-weight-600">Facultad:</span> <s:property value="%{fac}"></s:property></li>
                                            <li class="mb-2 mb-xl-3 display-28"><span class="display-26 text-secondary me-2 font-weight-600">Edad:</span> <s:property value="%{u.edad}"></s:property> años</li>
                                            <li class="mb-2 mb-xl-3 display-28"><span class="display-26 text-secondary me-2 font-weight-600">Idioma:</span> <s:property value="%{u.idioma}"></s:property></li>
                                            </ul>
                                            <div class="col-lg-12 mt-3">
                                                <div>
                                                    <span class="section-title titulorosa mb-3 mb-sm-4">Mi biografía</span>
                                                    <p><s:property value="%{u.biografia}"></s:property></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div> 
                </div>
            </section>
        <jsp:include page="../FOOTER/footer.jsp" />
    </body>
</html>
