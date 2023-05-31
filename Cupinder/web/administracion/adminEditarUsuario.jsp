<%-- 
    Document   : adminEditarUsuario
    Created on : 31-may-2023, 17:20:58
    Author     : victo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="s" uri="/struts-tags"%>
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




        </body>
    </s:else>
</html>
