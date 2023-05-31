<%-- 
    Document   : adminUsuarios
    Created on : 31-may-2023, 17:20:43
    Author     : victo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <s:if test="%{#session.user.rol != 'Admin'}">
        <s:action name="volverInicio" executeResult="true"></s:action>
    </s:if>
    <s:else>
        <body>
            <jsp:include page="../HEADER/header.jsp" />
            <div class="container-fluid pt-3 pb-3" style="background-color: #f8edeb; min-height: 70vh">
                <div class="container rounded bg-white mt-5 mb-5">
                    <table class="table table-pink table-striped">
                        <thead>
                        <th>Foto perfil</th>
                        <th>Nombre</th>
                        <th>Apellidos</th>
                        <th>Usuario</th>
                        <th>Correo</th>
                        <th>Acciones</th>
                        </thead>

                        <s:iterator value="listaUsuarios" var="u">
                            <tr>
                                <td>
                                    <a href="#" class="d-flex align-items-center justify-content-center link-dark text-decoration-none" aria-expanded="false">
                                        <img src="${pageContext.request.contextPath}${u.fotoPerfil}" alt="mdo" width="53" height="53" class="rounded-circle">
                                    </a>
                                </td>
                                <td><s:property value="#u.nombre"></s:property></td>
                                <td><s:property value="#u.apellidos"></s:property></td>
                                <td><s:property value="#u.usuario"></s:property></td>
                                <td><s:property value="#u.correo"></s:property></td>
                                <td><s:url id="url" action="editarUsuario">
                                        <s:param name="idUsuario" value="#u.id"></s:param>
                                    </s:url>
                                    <s:a href="%{url}" cssStyle="text-decoration: none;">
                                        <p>Editar</p>
                                    </s:a>
                                    <s:url id="url" action="borrarUsuario">
                                        <s:param name="idUsuario" value="#u.id"></s:param>
                                    </s:url>
                                    <s:a href="%{url}" cssStyle="text-decoration: none;">
                                        <p>Eliminar</p>
                                    </s:a>
                                </td>
                            </tr>
                        </s:iterator>
                    </table>
                </div>
            </div>
            <jsp:include page="../FOOTER/footer.jsp" />
        </body>
    </s:else>
</html>
