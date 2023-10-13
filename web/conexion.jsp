<%-- 
    Document   : conexion
    Created on : Sep 27, 2023, 5:20:08 PM
    Author     : willi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
    Connection conexion = null;
    PreparedStatement st = null;
    ResultSet rs = null;
//Leemos el driver MySQL
    Class.forName("com.mysql.jdbc.Driver");
//Obtenemos la conexion con la base de datos
    conexion = DriverManager.getConnection("jdbc:mysql://localhost/conta", "root", "");
%>
