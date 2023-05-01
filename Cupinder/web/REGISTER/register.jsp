
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="shortcut icon" href="./IMG/icono.png" type="image/gif">
    </head>
    <body>
        <jsp:include page="../HEADER/header.jsp" />
        <div div class="container-fluid row justify-content-center" style="background-color: #f8edeb; height: 78vh">
            <div class="col-6 p-3">
                <s:form name="register-form" action="register" theme="simple">
                <div class="row g-2">
                    <div class="form-floating col-sm-6 mb-2">
                        <s:textfield name="nombre" label="Nombre" cssClass="form-control" placeholder="Nombre"/>

                        <label for="floatingInput">Nombre</label>
                    </div>
                    <div class="form-floating col-sm-6 mb-2">
                        <s:textfield name="apellidos" label="Apellidos" cssClass="form-control" placeholder="Apellidos"/>

                        <label for="floatingInput">Apellidos</label>
                    </div>


                    <div class="input-group mb-2">
                        <span class="input-group-text">@</span>
                        <div class="form-floating col-12">
                            <s:textfield name="usuario" label="Usuario" cssClass="form-control" placeholder="Usuario"/>
                            <label for="floatingInput">Usuario</label>
                        </div>
                    </div>

                    <div class="form-floating input-group mb-2 col-6">
                        <span class="input-group-text"><i class="fa-solid fa-key"></i></span>
                        <div class="form-floating col-6">
                            <s:password name="password" label="Contraseña" cssClass="form-control" placeholder="Contraseña"/>
                            <label for="floatingInput">Contraseña</label>
                        </div>
                    </div>

                    <div class="form-floating input-group mb-2 col-6">
                        <span class="input-group-text"><i class="fa-solid fa-key"></i></span>
                        <div class="form-floating col-6">
                            <s:password name="passwordConfirm" label="Contraseña" cssClass="form-control" placeholder="Repita la Contraseña"/>
                            <label for="floatingInput">Repita la Contraseña</label>
                        </div>
                    </div>

                    <div class="form-floating col-12 mb-2">

                        <s:textfield name="email" label="Correo Electrónico" cssClass="form-control" placeholder="you@example.com"/>
                        <label for="floatingInput">Correo Electrónico</label>
                    </div>

                    <div class="form-floating col-sm-4 mb-2">

                        <s:textfield name="edad" label="Edad" cssClass="form-control" placeholder="Edad" />
                        <label for="floatingInput">Edad</label>
                    </div>

                    <div class="form-floating col-sm-4 mb-2">
                        <s:select name="sexo" label="Sexo" cssClass="form-control" placeholder="Sexo" list="{'Mujer','Hombre'}"/>                                                  
                        <label for="floatingInput">Sexo</label>
                    </div>

                    <div class="form-floating col-sm-4 mb-2">
                        <s:select name="orientacion" label="Orientacion" cssClass="form-control" placeholder="Orientacion" list="{'Heterosexual','Homosexual','Bisexual'}"/>                                                  
                        <label for="floatingInput">Orientacion</label>
                    </div> 
                    <div class="form-floating col-sm-6 mb-2">
                        <s:select name="facultad" label="Facultad" cssClass="form-control" placeholder="Facultad" list="{'Derecho', 'Informática', 'Biotecnología', 'Nutrición'}"/>                                                  
                        <label for="floatingInput">Facultad</label>
                    </div>
                    <div class="form-floating col-sm-6 mb-2">
                        <s:textfield name="ciudad" label="Ciudad" cssClass="form-control" placeholder="Ciudad"/>

                        <label for="floatingInput">Ciudad</label>
                    </div>

                </div>
            </s:form>
            </div>
            
        </div>
        <jsp:include page="../FOOTER/footer.jsp" />
    </body>
</html>
