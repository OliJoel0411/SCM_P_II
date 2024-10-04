<%-- 
    Document   : testConnection
    Created on : 26 sept. 2024, 19:08:23
    Author     : oliverjoelloconlopez
--%>

<%@ page import="java.sql.Connection" %>
<%@ page import="config.Conexion" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Prueba de Conexión a la Base de Datos</title>
    </head>
    <body>
        <h1>Prueba de Conexión a la Base de Datos</h1>
        <%
            Conexion cn = new Conexion();
            Connection con = null;
            try {
                con = cn.getConnection();
                if (con != null) {
                    out.println("<h2>Conexión exitosa a la base de datos!</h2>");
                } else {
                    out.println("<h2>Error al conectar a la base de datos</h2>");
                }
            } catch (Exception e) {
                out.println("<h2>Error al conectar a la base de datos: " + e.getMessage() + "</h2>");
                e.printStackTrace();
            } finally {
                if (con != null) {
                    try {
                        con.close(); // Cierra la conexión si está abierta
                        out.println("<h3>Conexión cerrada correctamente.</h3>");
                    } catch (Exception e) {
                        out.println("<h3>Error al cerrar la conexión: " + e.getMessage() + "</h3>");
                        e.printStackTrace();
                    }
                }
            }
        %>
    </body>
</html>

