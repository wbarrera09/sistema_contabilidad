<%-- 
    Document   : actualizarcuenta
    Created on : Sep 27, 2023, 10:08:20 PM
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


        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

        <link rel="stylesheet" href="mystyle.css"/>

        <!--<script
        src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script> --> 
        
        
        <!-- Funcion para confirmar actualización de datos -->

        <script>
            function confirmarActualizacion() {
                var confirmacion = confirm("¿Estás seguro de que deseas actualizar este elemento?");
                if (confirmacion) {
                    // Continuar con la actualización.
                    return true;
                } else {
                    // Cancelar la actualización.
                    return false;
                }
            }
        </script>


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
            <h1> Modificar Registros </h1>
            <hr>

            <%-- Formulario para actualizar datos --%>



            <form action="" method="post" class="form-control" style="width: 900px; height: 900px">

                id:
                <input type="text" readonly="" class="form-control" value="<%= rs.getInt("id")%>"/>

                cuenta:
                <input type="text" name="cuenta" class="form-control" value="<%= rs.getString("cuenta")%>"/>

                nombrecuenta:
                <input type="text" name="nombrecuenta" class="form-control" value="<%= rs.getString("nombrecuenta")%>"/>

                tipo:
                <select class="form-control" id="tipo" name="tipo" value="<%= rs.getString("tipo")%>" >
                    <option selected>Seleccione una opción</option>
                    <option value="Activo" <%= (rs.getString("tipo").equals("Activo")) ? "selected" : ""%>>Activo</option>
                    <option value="Pasivo" <%= (rs.getString("tipo").equals("Pasivo")) ? "selected" : ""%>>Pasivo</option>
                    <option value="Capital" <%= (rs.getString("tipo").equals("Capital")) ? "selected" : ""%>>Capital</option>
                </select>

                nivel:                
                <select class="form-control" id="nivel" name="nivel" value="<%= rs.getInt("nivel")%>">
                    <option selected>Seleccione nivel</option>
                    <option value="1" <%= (rs.getInt("nivel") == 1) ? "selected" : ""%>>1</option>
                    <option value="2" <%= (rs.getInt("nivel") == 2) ? "selected" : ""%>>2</option>
                    <option value="3" <%= (rs.getInt("nivel") == 3) ? "selected" : ""%>>3</option>
                    <option value="4" <%= (rs.getInt("nivel") == 4) ? "selected" : ""%>>4</option>
                    <option value="5" <%= (rs.getInt("nivel") == 5) ? "selected" : ""%>>5</option>
                    <option value="6" <%= (rs.getInt("nivel") == 6) ? "selected" : ""%>>6</option>
                    <option value="7" <%= (rs.getInt("nivel") == 7) ? "selected" : ""%>>7</option>
                    <option value="8" <%= (rs.getInt("nivel") == 8) ? "selected" : ""%>>8</option>
                    <option value="9" <%= (rs.getInt("nivel") == 9) ? "selected" : ""%>>9</option>
                </select>

                <br>


                <input type="submit" value="Actualizar" class="btn btn-success" onclick="confirmarActualizacion()"/>




                <a href="agregarcuenta.jsp" class="btn btn-info">Regresar</a>



            </form>
            <hr>


            <% } %>

            <%
                if (request.getMethod().equalsIgnoreCase("POST")) {
                    // Actualizando datos
                    String cuenta = request.getParameter("cuenta");
                    String nombrecuenta = request.getParameter("nombrecuenta");
                    String tipo = request.getParameter("tipo");
                    String nivel = request.getParameter("nivel");

                    // Sentencia sql para actualizar los datos con PreparedStatement
                    String updateQuery = "update catalogo set cuenta=?, nombrecuenta=?, tipo=?, nivel=? where id=?";
                    st = conexion.prepareStatement(updateQuery);
                    st.setString(1, cuenta);
                    st.setString(2, nombrecuenta);
                    st.setString(3, tipo);
                    st.setString(4, nivel);
                    st.setInt(5, id);

                    st.executeUpdate();

                    response.sendRedirect("agregarcuenta.jsp?resultado=Datos+Actualizados+Exitosamente");

                    conexion.close();
                }

            %>
            </body>

