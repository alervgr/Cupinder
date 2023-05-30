<%-- 
    Document   : aniadirTarjeta
    Created on : 30-may-2023, 17:02:58
    Author     : alervgr
--%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Acerca de nosotros</title>
        <link rel="shortcut icon" href="./IMG/icono.png" type="image/gif">
    </head>
    <body>
        <jsp:include page="../HEADER/header.jsp" />
        <div div class="container-fluid row justify-content-center" style="background-color: #f8edeb; height: 78vh">
            <div class="col-6">
                <s:form name="register-form" action="aniadirTarjeta" theme="simple" enctype="multipart/form-data">
                    <div class="row gy-3">
                        <h1 class="p-5 text-center">Añadir tarjeta de credito</h1>
                        <div class="form-floating col-sm-6 mb-2">
                            <s:textfield name="numeroTarjeta" label="Numero de la tarjeta" cssClass="form-control" placeholder="Numero de la tarjeta"/>
                            <label for="floatingInput">Numero de la tarjeta</label>
                        </div>
                        <div class="form-floating col-sm-6 mb-2">
                            <s:textfield name="CVV" label="CVV" cssClass="form-control" placeholder="CVV"/>
                            <label for="floatingInput">CVV</label>
                        </div>
                        <div class="input-group mb-2 col-12">
                            <div class="form-floating ">
                                <s:textfield name="fechaExpiracion" label="Fecha de expiración" cssClass="form-control" placeholder="Fecha de expiración"/>
                                <label for="floatingInput">Fecha de expiración</label>
                                <small class="text-muted">Formato: AAAA-MM-DD</small>
                            </div>
                        </div>
                        <div class="row justify-content-center p-2">
                            <button type="submit" name="btnRegister" class=" col-2 btn">
                                <i class="fa-solid fa-circle-arrow-right fa-2xl" style="color: #e8a598;"></i>
                            </button>
                        </div>
                        <s:fielderror cssClass="pt-3"></s:fielderror>
                        </div>
                    </div>
            </s:form>
        </div>
        <jsp:include page="../FOOTER/footer.jsp" />
    </body>
</html>