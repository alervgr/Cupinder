
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Acerca de nosotros</title>
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
                                    <div class="col-md-12"><label class="labels">Facultad</label><s:textfield cssClass="form-control" value="%{#session.user.facultades}"></s:textfield></div>
                                    <div class="col-md-12"><label class="labels">Ocupación</label><s:textfield cssClass="form-control" value="%{#session.user.ocupacion}"></s:textfield></div>
                                    <div class="col-md-12"><label class="labels">DNI</label><s:textfield cssClass="form-control" value="%{#session.user.DNI}"></s:textfield></div>
                                    <div class="col-md-12"><label class="labels">Biografía</label><s:textarea cssClass="form-control" value="%{#session.user.biografia}"></s:textarea></div>

                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-md-6"><label class="labels">Género</label><s:textfield cssClass="form-control" value="%{#session.user.genero}" disabled="true"></s:textfield></div>
                                    <div class="col-md-6"><label class="labels">Orientación</label><s:textfield cssClass="form-control" value="%{#session.user.orientacion}"></s:textfield></div>
                                    </div>
                                </div>
                            </div>
                            <div class="mb-5 text-center"><button class="btn btnRegistro" type="submit">Guardar Perfil</button></div>
                        </div>
                </s:form>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../FOOTER/footer.jsp" />
</body>
</html>
