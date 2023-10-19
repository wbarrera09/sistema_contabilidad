<%-- 
    Document   : agregarcuenta
    Created on : Sep 27, 2023, 5:57:12 PM
    Author     : willi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.*" %>
<%@ include file="header.jsp"%>







<!DOCTYPE html>
<html>
    <head>
        <title>Ingreso de Cuentas de Catalogo</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- <link rel="stylesheet"
              href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        
        -->

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>


        <script
        src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

        <link rel="stylesheet" href="mystyle.css"/>

        <!--<script
        src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script> --> 

    </head>
    <body>

        <div>
            <div class="p-3 my-3 bg-primary text-white header-container">
                <h1>SISTEMA CONTABILIDAD</h1>
                <p>Agregar Cuenta al Catalogo</p>
                                <p>prueba</p>
 
            </div>



            <div class="row p-5">

                <form role="form" action="insertarcuenta.jsp" method="POST">
                    <div class="col-12">

                        <div class="well well-sm"><strong><span class="glyphicon glyphicon-asterisk"></span>Campos requeridos</strong></div>
                        <div class="form-group">
                            <label for="nombre">Cuenta:</label>
                            <div class="input-group">
                                <input type="text" class="form-control" name="cuenta"
                                       id="cuenta" placeholder="Ingresar codigo de cuenta" required>
                                <span class="input-group-addon"><span class="glyphicon glyphicon-pencil"></span></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="nombrecuenta">Nombre de Cuenta:</label>
                            <div class="input-group">
                                <input type="text" class="form-control" aria-label="Default"
                                       id="nombrecuenta" name="nombrecuenta" placeholder="Ingresar nombre de la cuenta" required>
                                <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>

                            </div>
                        </div>
                        <div class="form-group">
                            <label for="acumula">Cuenta que Acumula:</label>
                            <div class="input-group">
                                <input type="text" class="form-control" id="cacumula"
                                       name="cacumula" placeholder="Cuenta que acumula" required>
                                <span class="input-group-addon"><span class="glyphicon glyphicon-plus"></span></span></div>
                        </div>
                        <div class="form-group">
                            <label for="tipo">Seleccione Tipo de Cuenta:</label>
                            <select class="form-control" id="tipo" name="tipo" required>
                                <option selected>Seleccione una opción</option>
                                <option value="Activo">Activo</option>
                                <option value="Pasivo">Pasivo</option>
                                <option value="Capital">Capital</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="tipo">Seleccione Nivel de la Cuenta:</label> <br>
                            <select class="form-control" class="glyphicon glyphicon-pencil"
                                    id="nivel" name="nivel" required>
                                <option selected>Seleccione nivel</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8</option>
                                <option value="9">9</option>
                            </select>
                        </div> 
                        <input type="submit" class="btn btn-success" value="Guardar" >



                    </div>

                    <br>

                </form>
                <br>
                <%-- Verificando si la variable resultado esta vacia--%>
                <% if (request.getParameter("resultado") != null) {%>  
                <div class="alert alert-success">
                    <b> <%= request.getParameter("resultado")%></b>
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Cerrar"></button>
                </div>
                <%--
            <div class="alert alert-success col-md-10">
                <b> <%= request.getParameter("resultado")%></b>
            </div>
                --%>
                <%}%>
            </div>
            <!--notese el uso de jsp:include -->
        </div> <!-- /container -->
        <jsp:include page="listacatalogo.jsp"/> 


        <%-- para que automaticamente la ventana baje --%>
        <script>
            window.onload = function () {
                // Obtén la altura total del documento
                var documentHeight = document.documentElement.scrollHeight;

                // Desplázate hasta el final de la página
                window.scrollTo(0, documentHeight);
            };
        </script>


    </body>
</html>
