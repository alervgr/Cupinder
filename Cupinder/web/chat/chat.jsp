<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="./chat/chat.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <jsp:include page="../HEADER/header.jsp"/>

        <div class="container-fluid py-5 px-4" style="background-color: #f8edeb; height: 70vh">

            <div class="row rounded overflow-hidden justify-content-center">
                <!-- Users box-->
                <div class="col-3 px-0" style=" border-right:10px solid #f8edeb;">
                    <div class="bg-white h-100">

                        <div class="bg-gray px-4 py-2 bg-light">
                            <p class="h5 mb-0 py-1">Chats</p>
                        </div>

                        <div class="messages-box">
                            <div class="list-group rounded-0">
                                
                                <s:iterator value="usuariosConChat" var="usuario">
                                    <s:url id="url" action="mostrarMensajesChat">
                                        <s:param name="destinatarioId" value="#usuario.id"></s:param>
                                    </s:url>
                                    <s:a href="%{url}" cssClass="list-group-item list-group-item-action list-group-item-light rounded-0">
                                        <div class="media row"><img src="${pageContext.request.contextPath}<s:property value="#usuario.fotoPerfil"></s:property>" alt="user" width="70" class="rounded-circle col-2">
                                            <div class="media-body ml-4 col align-self-center">
                                                <div class="d-flex align-items-center justify-content-between mb-1">
                                                    <h6 class="mb-0 fs-3"><s:property value="#usuario.usuario"></s:property><s:if test="%{#usuario.dni != null}">     <span><i class="fa-solid fa-circle-check fa-2xs"></i></span></s:if></h6>
                                                    </div>
                                                </div>
                                            </div>
                                    </s:a>
                                </s:iterator>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Chat Box-->
                <div class="col-4 px-0"style=" border-left:10px solid #f8edeb;">
                    <div class="px-4 py-5 chat-box bg-white">
                        <s:iterator value="mensajesChat" var="mensaje">
                            <!-- Sender Message-->


                            <s:if test="#session.user.id == #mensaje.usuariosByRemitenteId.id">
                                <div class="media w-50 ms-auto mb-3"><img src="${pageContext.request.contextPath}${session.user.fotoPerfil}" alt="user" width="50" class="rounded-circle">
                                    <div class="media-body ml-3">
                                        <div class=" rounded py-2 px-3 mb-2" style="background-color: #f8edeb">
                                            <p class="text-small mb-0 text-muted"><s:property value="#mensaje.texto"></s:property></p>
                                            </div>
                                            <p class="small text-muted"><s:property value="#mensaje.fechaEnvio"></s:property></p>
                                        </div>
                                    </div>
                            </s:if>
                            <s:else>
                                <div class="media w-50 mb-3"><img src="${pageContext.request.contextPath}${usuarioDestinatario.fotoPerfil}" alt="user" width="50" class="rounded-circle">
                                    <div class="media-body ml-3">
                                        <div class="bg-light rounded py-2 px-3 mb-2">
                                            <p class="text-small mb-0 text-muted"><s:property value="#mensaje.texto"></s:property></p>
                                            </div>
                                            <p class="small text-muted"><s:property value="#mensaje.fechaEnvio"></s:property></p>
                                        </div>
                                    </div>
                            </s:else>




                        </s:iterator>


                        <!-- Typing area -->
                        

                    </div>
                    <s:form id="enviarMensaje" action="enviarMensaje" theme="simple">
                            <div class="input-group">
                                <s:textfield name="mensajito" placeholder="Escriba un mensaje..." cssClass="form-control rounded-0 border-0 py-3 bg-light" />
                                <s:hidden value=""></s:hidden>
                                <div class="input-group-append bg-light"  style=" background-color: white">
                                    <button type="submit" class="btn btn-link">
                                        <i class="fa-solid fa-paper-plane fs-3 pt-1" style="color: #e8a598"></i>
                                    </button>
                                </div>
                            </div>
                        </s:form>
                </div>

            </div>

        </div>
            <jsp:include page="../FOOTER/footer.jsp"/>
    </body>
</html>
