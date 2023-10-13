<%-- 
    Document   : eliminarcuenta
    Created on : Sep 27, 2023, 6:25:13 PM
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
            //Considerar el id para eliminar ese registro
            int id = Integer.parseInt(request.getParameter("id"));
            //Sentencia sql para eliminar datos
            st = conexion.prepareStatement("DELETE FROM catalogo WHERE id = ?");
            st.setInt(1, id);
            st.executeUpdate();
            conexion.close();
        %>

        <%--Forward que se utiliza para redireccionar a la pagina de ingresaremp.jsp--%>
        <jsp:forward page="agregarcuenta.jsp">
            <jsp:param name="resultado" value="Datos Eliminados Exitosamente"/>
        </jsp:forward>
    </body>
</html>
