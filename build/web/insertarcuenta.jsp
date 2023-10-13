<%-- 
    Document   : insertarcuenta
    Created on : Sep 27, 2023, 6:00:18 PM
    Author     : willi
--%>

<%@ include file="conexion.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
            //Capturando los datos por medio del request y el metodo getParameter
            String cuenta = request.getParameter("cuenta");
            String nombrecuenta = request.getParameter("nombrecuenta");
            String tipo = request.getParameter("tipo");

            String nivel = request.getParameter("nivel");
            //Sentencia sql para ingresar datos
            st = conexion.prepareStatement("INSERT INTO catalogo values (null,?,?,?,?)");
            st.setString(1, cuenta);
            st.setString(2, nombrecuenta);
            st.setString(3, tipo);
            st.setInt(4, Integer.parseInt(nivel));
            st.executeUpdate();
            conexion.close();
        %>
       
        <%--Forward que se utiliza para redireccionar a la pagina de ingresaremp.jsp--%>
        <jsp:forward page="agregarcuenta.jsp">
        <jsp:param name="resultado" value="Datos Ingresados Exitosamente"/>
        </jsp:forward>
        </body>
       </html>
