<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Informes de Carros</title>
    <style>
        body { background-color: royalblue; color: white; text-align: center; }
        table { width: 80%; margin: auto; border-collapse: collapse; background: white; color: black; }
        th, td { border: 1px solid black; padding: 10px; text-align: center; }
        th { background: green; color: white; }
        a { color: white; font-size: 18px; text-decoration: none; display: block; margin-top: 20px; }
    </style>
</head>
<body>
    <h2>Informes de Carros</h2>
    <table>
        <tr>
            <th>ID Informe</th>
            <th>Placa</th>
            <th>Descripción</th>
            <th>Fecha</th>
        </tr>
        <%
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/flota", "root", "tu_password");
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT * FROM informes");

                while (rs.next()) {
        %>
        <tr>
            <td><%= rs.getInt("id_informe") %></td>
            <td><%= rs.getString("placa") %></td>
            <td><%= rs.getString("descripcion") %></td>
            <td><%= rs.getString("fecha") %></td>
        </tr>
        <%
                }
                rs.close();
                stmt.close();
                conn.close();
            } catch (Exception e) {
                out.println("<tr><td colspan='4'>Error al cargar datos</td></tr>");
            }
        %>
    </table>
   <a href="home.jsp">
    <button>Volver</button>
</a>

</body>
</html>
