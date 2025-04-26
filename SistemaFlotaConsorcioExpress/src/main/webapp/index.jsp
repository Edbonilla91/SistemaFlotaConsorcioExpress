<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login - Consorcio Express</title>
    <style>
        body { background-color: royalblue; color: white; text-align: center; font-family: Arial, sans-serif; }
        .logo { width: 150px; margin-top: 20px; }
        .login-box { background: white; color: black; padding: 20px; width: 300px; margin: auto; border-radius: 10px; }
        input { width: 90%; padding: 10px; margin: 10px 0; }
        button { background: green; color: white; padding: 10px 15px; border: none; cursor: pointer; }
        button:hover { background: darkgreen; }
        .error { color: red; font-weight: bold; margin-top: 10px; }
    </style>
</head>
<body>
    <img src="images/logo.png" alt="Logo Consorcio Express" class="logo">
    <h2>Inicio de Sesión</h2>
    <div class="login-box">
        <!-- Mensaje de error si el login falla -->
        <% String error = request.getParameter("error");
           if ("1".equals(error)) { %>
            <p class="error">Usuario no válido</p>
        <% } %>
        
        <form action="LoginServlet" method="post">
            <label>Usuario:</label><br>
            <input type="text" name="usuario" required><br>
            <label>Contraseña:</label><br>
            <input type="password" name="password" required><br>
            <button type="submit">Ingresar</button>
        </form>
    </div>
</body>
</html>

