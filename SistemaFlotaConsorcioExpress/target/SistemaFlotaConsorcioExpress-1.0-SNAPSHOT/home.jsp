<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Panel de Reportes - Consorcio Express</title>
    <style>
        body { background-color: royalblue; color: white; text-align: center; font-family: Arial, sans-serif; }
        .header { display: flex; justify-content: space-between; padding: 10px; background: darkblue; }
        .CerrarSesion { background: red; color: white; padding: 10px 15px; border: none; cursor: pointer; }
        .logout:hover { background: darkred; }
        .button { background: green; color: white; padding: 10px 20px; margin: 10px; border: none; cursor: pointer; }
        .button:hover { background: darkgreen; }
        .report-options { display: none; margin-top: 10px; }
    </style>
    <script>
        function toggleReportOptions() {
            var reportDiv = document.getElementById("report-options");
            if (reportDiv.style.display === "none") {
                reportDiv.style.display = "block";
            } else {
                reportDiv.style.display = "none";
            }
        }
    </script>
</head>
<body>
    <div class="header">
        <h3>Edinson Bonilla (T.OP) en línea</h3>
        
        <form action="CerrarSesionServlet" method="get">
    <button type="submit">Cerrar sesión</button>
</form>

    </div>

    <h2>Panel de Reportes</h2>
    <button class="button" onclick="window.location.href='carrosOperativos.jsp'">Carros Operativos</button>
    <button class="button" onclick="window.location.href='carrosMantenimiento.jsp'">Carros en Mantenimiento</button>
    <button class="button" onclick="window.location.href='informesCarros.jsp'">Informes de Carros</button>

    <button class="button" onclick="toggleReportOptions()">Generar Reporte Total</button>

    <div id="report-options" class="report-options">
        <button class="button">Tienes 0 informes</button>
        <button class="button">Enviar el total de los reportes</button>
    </div>
</body>
</html>
