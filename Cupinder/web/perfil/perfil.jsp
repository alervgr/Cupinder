

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="persistencia.DAO_facultades"%>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Perfil</title>
        <script src="./JS/goUpButton.js"></script>
        <link rel="shortcut icon" href="./IMG/icono.png" type="image/gif">
    </head>
    <body>

        <jsp:include page="../HEADER/header.jsp" />
        <div class="container-fluid pt-3 pb-3" style="background-color: #f8edeb; min-height: 79vh">
            <div class="container rounded bg-white mt-5 mb-5">
                <s:form action="modificarPerfil" method="POST" theme="simple">
                    <div class="row">
                        <div class="col-md-3 border-right">
                            <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" width="250px" src="${pageContext.request.contextPath}${session.user.fotoPerfil}"><span class="font-weight-bold"></span>Cuenta ${session.user.rol}<span class="text-black-50">Registrado el ${session.user.fechaRegistro}</span><span> </span></div>
                            <div class="p-4 text-center">
                                <a class="btn btnRegistro"  href="<s:url action="rehacerTest"/>">Rehacer Test</a>
                            </div>
                        </div>
                        <div class="col-md-9 border-right">
                            <div class="p-3 py-5">

                                <div class="d-flex justify-content-between align-items-center mb-3">
                                    <h4 class="text-right">Ajustes del Perfil</h4>
                                </div>
                                <div class="row mt-2">

                                    <div class="col-md-6"><label class="labels">Nombre</label><s:textfield cssClass="form-control" value="%{#session.user.nombre}" disabled="true"></s:textfield></div>
                                    <div class="col-md-6"><label class="labels">Apellidos</label><s:textfield cssClass="form-control" value="%{#session.user.apellidos}" disabled="true"></s:textfield></div>
                                    <div class="col-md-9"><label class="labels">Nombre de usuario</label><s:textfield cssClass="form-control" value="%{#session.user.usuario}" disabled="true"></s:textfield></div>
                                    <div class="col-md-3"><label class="labels">Edad</label><s:textfield cssClass="form-control" value="%{#session.user.edad}"></s:textfield></div>
                                    <div class="col-md-12"><label class="labels">Email</label><s:textfield cssClass="form-control" value="%{#session.user.correo}"></s:textfield></div>
                                    <div class="col-md-6"><label class="labels">Contraseña</label><s:textfield cssClass="form-control" value=""></s:textfield></div>
                                    <div class="col-md-6"><label class="labels">Confirmar Contraseña</label><s:textfield cssClass="form-control" value=""></s:textfield></div>

                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-md-12"><label class="labels">Idioma</label><s:textfield cssClass="form-control" value="%{#session.user.idioma}"></s:textfield></div>
                                    <div class="col-md-12"><label class="labels">Facultad</label><s:select name="facultad" label="Facultad" cssClass="form-control" placeholder="Facultad" list="facultades" value="fac"/></div>
                                    <div class="col-md-12"><label class="labels">Ocupación</label><s:textfield cssClass="form-control" value="%{#session.user.ocupacion}"></s:textfield></div>
                                    <div class="col-md-12"><label class="labels">DNI</label><s:textfield cssClass="form-control" value="%{#session.user.DNI}"></s:textfield></div>
                                    <div class="col-md-12"><label class="labels">Biografía</label><s:textarea cssClass="form-control" value="%{#session.user.biografia}"></s:textarea></div>

                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-md-6"><label class="labels">Género</label><s:textfield cssClass="form-control" value="%{#session.user.genero}" disabled="true"></s:textfield></div>
                                    <div class="col-md-6"><label class="labels">Orientación</label><s:select name="orientacion" label="Orientacion" cssClass="form-control" placeholder="Orientacion" value="%{#session.user.orientacion}" list="{'Heterosexual','Homosexual','Bisexual'}"/></div>
                                </div>
                            </div>
                        </div>
                        <div class="mb-5 text-center"><button class="btn btnRegistro" type="submit">Guardar Perfil</button></div>
                    </div>
                </s:form>
                <div>
                    <hr class="m-2">
                    <h1 class="p-3 text-center">Tarjetas de crédito</h1>
                    <s:if test="%{tarjetasUsuario.isEmpty()}">
                        <div class="pb-4 text-center" >
                            <p >No tienes tarjetas de credito asociadas.</p>
                            <a class="btn btnRegistro"  href="<s:url action="irAniadirTarjeta"/>">Añadir tarjeta de crédito</a>
                        </div>
                    </s:if>
                    <s:else>
                        <div class="row justify-content-center">
                            <div class="col-6">
                                <ul class="list-group text-center">
                                    <s:iterator value="tarjetasUsuario" var="tarjeta">
                                        <li class="list-group-item"><i class="fa-brands fa-cc-visa fa-xl m-1"></i><s:property value="#tarjeta.numeroTarjeta"></s:property> -- <s:property value="#tarjeta.fechaExpiracion"></s:property>
                                            <s:url id="url" action="borrarTarjeta">
                                                <s:param name="tarjetaId" value="#tarjeta.idTarjeta"></s:param>
                                            </s:url>
                                            <s:a href="%{url}" cssStyle="text-decoration: none;">
                                                <p>Borrar</p>
                                            </s:a>
                                        </li>
                                    </s:iterator>
                                </ul>
                                <div class="p-4 text-center">
                                    <a class="btn btnRegistro"  href="<s:url action="irAniadirTarjeta"/>">Añadir tarjeta de crédito</a>
                                </div>
                            </div>
                        </div>
                    </s:else>
                </div>
            </div>
        </div>
    </div>
</div>
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
</html>
