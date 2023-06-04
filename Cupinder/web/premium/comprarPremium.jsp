
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Realizar Compra</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/visa.css" />        
    </head>
        <body>
            <jsp:include page="../HEADER/header.jsp" />
            <div class="d-flex justify-content-center container-fluid pt-3 pb-3" style="background-color: #f8edeb; min-height: 79vh">
                
                <div class="col-6 d-flex justify-content-center wrapper " style="border-radius: 10px;">
                        <div class="col card px-4">
                            <div class=" my-3">
                                <p class="h5 text-center">Seleccione un método de pago:</p>
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
                                    <a href="<s:url action="comprado"/>" class="btn btnRegistro">Comprar</a>                                
                                    </div>
                                </div>                     
                            <s:fielderror cssClass="pt-3"></s:fielderror>
                            </div>
                        </div>
                    
                </div>
            <jsp:include page="../FOOTER/footer.jsp" />
        </body>
</html>
