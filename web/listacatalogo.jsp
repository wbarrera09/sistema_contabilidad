<%-- 
    Document   : listacatalogo
    Created on : Sep 27, 2023, 6:03:40 PM
    Author     : willi
--%>

<%@ include file="conexion.jsp"%>
<html>
    <head>
        <title>Consulta de Catalogo de Cuentas</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script
        src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script
        src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

        <link rel="stylesheet" href="mystyle.css"/>

        <!-- Funcion para confirmar eliminación de datos -->

        <script>
            function confirmareliminacion(id) {
                var confirmacion = confirm("¿Estás seguro de que deseas eliminar este elemento?");
                if (confirmacion) {
                    // Si el usuario hace clic en "Aceptar", redirige a la página de eliminación.
                    window.location.href = 'eliminarcuenta.jsp?id=' + id;
                } else {
                    // Si el usuario hace clic en "Cancelar", no se realiza ninguna acción.
                }
            }
        </script>


    </head>

    <body class="container">

        <div class="row col-12 p-5 ml-5">
            <table class="table table-striped table-bordered table-hover">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Cuenta</th>
                        <th>Nombre Cuenta</th>
                        <th>Tipo</th>
                        <th>Nivel</th>
                        <th class="text-center">Eliminar</th>
                        <th class="text-center">Editar</th>
                        <th class="text-center">Visualizar</th>
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
                        

                        <td class="text-center">
                            <a class="btn btn-danger" href='#' onclick='confirmareliminacion(<%=rs.getString("id")%>)'>
                                <span class="glyphicon glyphicon-trash cl-white"></span>
                            </a>
                        </td>
                        

                        <td class="text-center"><a class="btn btn-primary"
                                                   href='actualizarcuenta.jsp?id=<%=rs.getString("id")%>'><span class="glyphicon glyphicon-pencil cl-white"></span></a></td>


                        <td class="text-center"><a class="btn btn-warning"
                                                   href='visualizarcuenta.jsp?id=<%=rs.getString("id")%>'><span class="glyphicon glyphicon-eye-open cl-white"></span></a></td>
                    </tr>
                    
                    
                    
                    
                    <%
                        }
                        conexion.close();
                    %>
                </tbody>
            </table>
            <%@ include file="footer.jsp"%>
        </div>
    </body>
