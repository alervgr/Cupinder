
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administración de Usuarios</title>
        <script src="./JS/goUpButton.js"></script>
    </head>
    <s:if test="%{#session.user.rol != 'Admin'}">
        <s:action name="volverInicio" executeResult="true"></s:action>
    </s:if>
    <s:else>
        <body>
            <jsp:include page="../HEADER/header.jsp" />
            <div class="container-fluid pt-3 pb-3" style="background-color: #f8edeb; min-height: 70vh">

                <div class="container rounded bg-white mt-5 mb-5">                    
                    <div class="p-4 text-center">
                        <a class="btn btnRegistro"  href="<s:url action="redirectRegister"/>">Crear Nuevo Usuario</a>
                    </div>
                    <table class="table table-pink table-striped" align="center">
                        <thead>
                        <th>Foto perfil</th>
                        <th>Nombre</th>
                        <th>Apellidos</th>
                        <th>Usuario</th>
                        <th>Correo</th>
                        <th>Eliminar Usuario</th>
                        <th>Ver perfil</th>
                        </thead>

                        <s:iterator value="listaUsuarios" var="u">
                            <tr>
                                <td>
                                    <a href="#" class="d-flex align-items-center justify-content-center link-dark text-decoration-none" aria-expanded="false">
                                        <img src="${pageContext.request.contextPath}${u.fotoPerfil}" alt="mdo" width="53" height="53" class="rounded-circle">
                                    </a>
                                </td>
                                <td>

                                    <s:property value="#u.nombre"></s:property></td>
                                <td><s:property value="#u.apellidos"></s:property></td>
                                <td><s:property value="#u.usuario"></s:property></td>
                                <td><s:property value="#u.correo"></s:property></td>
                                <td><s:url id="url" action="eliminarUsuario">
                                        <s:param name="idUsuario" value="#u.id"></s:param>
                                    </s:url>
                                    <s:a href="%{url}" cssStyle="text-decoration: none;">
                                        <i class="fa-solid fa-trash fa-xl" style="color: #e8a598;"></i>
                                    </s:a>
                                </td>
                                <td>
                                    <s:url id="url" action="obsPerfil">
                                        <s:param name="usuarioId" value="#u.id"></s:param>
                                    </s:url>
                                    <s:a href="%{url}">
                                        <span><i class="fa-solid fa-eye fa-2xl" style="color: #e8a598;"></i></span>
                                        </s:a>
                                </td>
                            </tr>
                        </s:iterator>
                    </table>
                </div>
            </div>
            <button onclick="scrollToTop()" id="goUpButton" class="btn position-fixed" title="Ir arriba">
                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-arrow-up"
                     viewBox="0 0 16 16" alt="Flecha hacia arriba">
                <path fill-rule="evenodd"
                      d="M8 15a.5.5 0 0 0 .5-.5V2.707l3.146 3.147a.5.5 0 0 0 .708-.708l-4-4a.5.5 0 0 0-.708 0l-4 4a.5.5 0 1 0 .708.708L7.5 2.707V14.5a.5.5 0 0 0 .5.5z" />
                </svg>
            </button>
            <jsp:include page="../FOOTER/footer.jsp" />
        </body>
    </s:else>
</html>
