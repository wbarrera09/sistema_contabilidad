<%-- 
    Document   : visualizarcuenta
    Created on : Sep 28, 2023, 8:03:24 PM
    Author     : willi
--%>

<%@page import="java.sql.*"%> <%-- Colocar * para que reconozca todo --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

        <%
            Connection conexion = null;
            PreparedStatement st = null;
            ResultSet rs = null;
//Leemos el driver MySQL
            Class.forName("com.mysql.jdbc.Driver");
//Empezamos a listar los datos de la tabla pero unicamente los de la fila seleccionada
            conexion = DriverManager.getConnection("jdbc:mysql://localhost/conta", "root", "");

            String idParam = request.getParameter("id");
            int id = 0; // Valor predeterminado o un valor válido si el parámetro es opcional
            if (idParam != null && !idParam.isEmpty()) {
                try {
                    id = Integer.parseInt(idParam);
                } catch (NumberFormatException e) {
                    // Manejo de error si el parámetro no es un número válido
                }
            }

            st = conexion.prepareStatement("select * from catalogo where id=" + id);
            rs = st.executeQuery();
            while (rs.next()) {


        %>


        <div class="container">
            <h1> Visualizar Registros </h1>
            <hr>

            <%-- Formulario para actualizar datos --%>



            <form action="" method="post" class="form-control" style="width: 900px; height: 900px">

                id:
                <input type="text" readonly="" class="form-control" value="<%= rs.getInt("id")%>"/>

                cuenta:
                <input type="text" readonly="" name="cuenta" class="form-control" value="<%= rs.getString("cuenta")%>"/>

                nombrecuenta:
                <input type="text" readonly="" name="nombrecuenta" class="form-control" value="<%= rs.getString("nombrecuenta")%>"/>

                tipo:
                <input type="text" readonly="" name="tipo" class="form-control" value="<%= rs.getString("tipo")%>"/>

                nivel:            
                <input type="text" readonly="" name="nivel" class="form-control" value="<%= rs.getInt("nivel")%>"/>


                <br>


                <a href="agregarcuenta.jsp" class="btn btn-info">Regresar</a>



            </form>
            <hr>


            <% } %>


            </body>
