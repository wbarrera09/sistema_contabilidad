<%-- 
    Document   : header
    Created on : Sep 27, 2023, 5:41:03 PM
    Author     : willi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>



<!-- comment -->

<%@ page session="true" %>
<%
    String usuario = "";
%>

<%
    if (session.getAttribute("login") == null || session.getAttribute("login") == " ") //check condition unauthorize user not direct access welcome.jsp page
    {
        //response.sendRedirect("index.jsp");
%>

<jsp:forward page="index.jsp">
    <jsp:param name="error" value="Es obligatorio identificarse"/>
</jsp:forward>
<%
    } else {

        usuario = (String) session.getAttribute("login");
    }
%>
<!-- comment -->


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script
        src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        

        <style>
            * {
                box-sizing: border-box;
            }
            body {
                margin: 0;
                font-family: Arial, Helvetica, sans-serif;
            }
            .header {
                overflow: hidden;
                background-color:whitesmoke ;
                padding: 20px 10px;
            }
            .header a {
                float: left;
                color: black;
                text-align: center;
                padding: 12px;
                text-decoration: none;
                font-size: 18px;
                line-height: 25px;
                border-radius: 4px;
            }
            .header a.logo {
                font-size: 25px;
                font-weight: bold;
            }
            .header a:hover {
                background-color: #ddd;
                color: black;
            }
            .header a.active {
                background-color: dodgerblue;
                color: white;
            }
            .header-right {
                float: right;
            }
            @media screen and (max-width: 500px) {
                .header a {
                    float: none;
                    display: block;
                    text-align: left;
                }
                .header-right {
                    float: none;
                }
                
                
            }
            
           
            
        </style>
    </head>
    <body>
        

        
        
        <div class="header">
            <a href="#default" class="logo"><img src="img/sistema-icon.png" width="125" height="125"/></a>
            <div class="header-left">
                <a class="active" href="#home">Home</a>
                <a href="#contact">Catalogo</a>
                <a href="#about">Tipo Partidas</a>
                <a href="#about">Partidas</a>
                <a href="#about">Reportes</a>
                <a href="#about">Utilidades</a>
                <a href="logout.jsp">Salir</a>      
            </div>
            
            <div class="header-right">
                <!-- Icono que se encuentra a la derecha -->
             <a href="#default" class="logo"><img src="img/sistema-icon2.png" width="125" height="125"/></a>
            </div>
            
            <br></br>
            <br></br>
               
            
            <div class="text-black header-left text-center">


            <h4>PROCESO DE IDENTIFICACIÓN</h4>
            <h5>Menú de administración</h5>
            <b>Usuario activo:</b> <%=usuario%> 
            </div>
            
            

        </div>
        
    </body>
</html>
