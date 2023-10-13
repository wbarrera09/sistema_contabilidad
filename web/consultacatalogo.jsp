<%-- 
    Document   : consultacatalogo
    Created on : Sep 27, 2023, 5:37:48 PM
    Author     : willi
--%>

<%@ include file="conexion.jsp"%>
<html>
    <head>
        <title>Consulta de Catalogo de Cuentas</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
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
    <%@ include file="header.jsp"%>
    <div class="container">
        <div class="container p-3 my-3 bg-primary text-white">
            <h1>Conta-System</h1>
            <p>Consulta de Catalogo de Cuentas</p>
        </div>
        <hr>
        <div class="row col-md-7">
            <table class="table table-striped table-bordered table-hover">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Cuenta</th>
                        <th>Nombre Cuenta</th>
                        <th>Tipo</th>
                        <th>Nivel</th>
                        <th>Eliminar</th>
                        <th>Ver</th>
                    </tr>
                </thead>
                <tbody>
                    <% st = conexion.prepareStatement("select * from catalogo");
                        rs = st.executeQuery();
                        while (rs.next()) {
                    %>
                    <tr>
                        <td><%=rs.getString("id")%></td>
                        <td><%=rs.getString("cuenta")%></td>
                        <td><%=rs.getString("nombrecuenta")%></td>
                        <td><%=rs.getString("tipo")%></td>
                        <td><%=rs.getString("nivel")%></td>
                        <td><a class="btn btn-danger"
                               href='eliminarcuenta.jsp?id=<%=rs.getString("id")%>'>Eliminar</a></td>
                        <td><a class="btn btn-primary"
                               href='consultar.jsp?id=<%=rs.getString("id")%>'>Actualizar</a></td>
                        <td><a class="btn btn-warning"
                               href='consultar.jsp?id=<%=rs.getString("id")%>'>Consultar</a></td>
                    </tr>
                    <%
                        }
                        conexion.close();
                    %>
                </tbody>
            </table>
            <%@ include file="footer.jsp"%>
        </div>
    </div>
</body>