<%-- 
    Document   : comprarPremium
    Created on : 04-jun-2023, 2:11:53
    Author     : victo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/visa.css" />        
    </head>
    <s:if test="%{listaTarjetas.isEmpty()}">
        <s:action name="irAniadirTarjeta" executeResult="true"></s:action>
    </s:if>
    <s:else>
        <body>
            <jsp:include page="../HEADER/header.jsp" />
            <div class="container-fluid pt-3 pb-3" style="background-color: #f8edeb; min-height: 79vh">
                <div class="row-6 align-items-center justify-content-center">
                    <div class="wrapper">
                        <div class="card px-4">
                            <div class=" my-3">
                                <p class="h8">Card number</p>
                                <p class="text-muted ">Seleccione una tarjeta:</p>
                            </div>                                                                         
                            <s:iterator value="listaTarjetas" var="t">
                                <div class="debit-card mb-3">
                                    <div class="d-flex flex-column h-100">
                                        <label class="d-block">
                                            <div class="d-flex position-relative">
                                                <div>
                                                    <img src="https://www.freepnglogos.com/uploads/visa-inc-logo-png-11.png" class="visa"
                                                         alt="">
                                                    <p class="mt-2 mb-4 text-white fw-bold"><s:property value="#t.titular"></s:property></p>
                                                    </div>
                                                    <div class="input">

                                                        <input type="radio" name="card" id="check" checked>
                                                    </div>
                                                </div>
                                            </label>
                                            <div class="mt-auto fw-bold d-flex align-items-center justify-content-between">
                                                <p><s:property value="#t.numeroTarjeta"></s:property></p>
                                            <p><s:property value="#t.mes"></s:property>/<s:property value="#t.anio"></s:property></p>
                                            </div>
                                        </div>
                                    </div>
                            </s:iterator>
                            <div class="mb-4">
                                <div class="p-4 text-center">
                                    <s:submit cssClass="btn btnRegistro" value="Comprar" label="Comprar"></s:submit>                                
                                    </div>
                                </div>                     
                            <s:fielderror cssClass="pt-3"></s:fielderror>
                            </div>
                        </div>
                    </div>
                </div>
            <jsp:include page="../FOOTER/footer.jsp" />
        </body>
    </s:else>
</html>
