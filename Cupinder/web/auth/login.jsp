<%-- 
    Document   : login
    Created on : 22-abr-2023, 3:25:29
    Author     : alervgr
--%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <title>Login</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/auth.css" />
        <link rel="shortcut icon" href="./IMG/icono.png" type="image/gif">
    </head>
    <body>

        <jsp:include page="../HEADER/header.jsp" />

        <div class="container-fluid text-center" style="height: 79vh;background-color: #f8edeb;">
            <div class="row h-100 justify-content-center">
                <main class="form-signin col-lg-3 col-md-6 col-12 align-self-center">
                    <s:form action="loginUsuario" method="post" theme="simple">
                        <h1 class="h3 mb-3 fw-normal">Por favor ingresa</h1>
                        <div class="form-floating">
                            <s:textfield name="correo" id="floatingInput" cssClass="form-control" placeholder="name@example.com"></s:textfield>
                                <label for="floatingInput">Correo electrónico</label>
                            </div>
                            <div class="form-floating">
                            <s:password name="password" placeholder="Contraseña" cssClass="form-control"></s:password>
                                <label for="floatingInput">Contraseña</label>
                            </div>
                        <s:submit value="Ingresar" name="btnLogin" cssClass="abtnLogin w-100 btn mt-3"></s:submit>
                        <s:fielderror cssClass="pt-3"></s:fielderror>
                    </s:form>
                        <p class="pt-2"><a class="link-dark" href="<s:url action="redirectRegister"/>">Registrarse</a></p>
                </main>

            </div>
        </div>

        <jsp:include page="../FOOTER/footer.jsp" />

    </body>
</html>
