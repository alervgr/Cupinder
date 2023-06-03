<%-- 
    Document   : adminIntereses
    Created on : 30-may-2023, 22:42:06
    Author     : victo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                    <table class="table table-pink table-striped">
                        <thead>
                        <th>Id</th>
                        <th>Nombre</th>
                        <th>Pulse para borrar</th>
                        </thead>

                        <s:iterator value="listaIntereses" var="i">
                            <tr>
                                <td><s:property value="#i.id"></s:property></td>
                                <td><s:property value="#i.nombre"></s:property></td>
                                <td><s:url id="url" action="borrarInteres">
                                        <s:param name="idInteres" value="#i.id"></s:param>
                                    </s:url>
                                    <s:a href="%{url}" cssStyle="text-decoration: none;">
                                        <p>Borrar</p>
                                    </s:a>
                                </td>
                            </tr>
                        </s:iterator>
                    </table>

                    <s:form name="nuevoInteres" action="nuevoInteres" theme="simple" enctype="multipart/form-data">
                        <div class="row g-2">
                            <div class="form-floating col-sm-6 mb-2">
                                <s:textfield name="nombre" label="Nombre" cssClass="form-control" placeholder="Nombre"/>

                                <label for="floatingInput">Nombre nuevo Interes</label>
                            </div>
                            <button type="submit" name="btnNuevoInteres" class=" col-2 btn">
                                <i class="fa-solid fa-circle-arrow-right fa-2xl" style="color: #e8a598;"></i>
                            </button>
                        </div>
                        <s:fielderror cssClass="pt-3"></s:fielderror>

                    </s:form>
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
