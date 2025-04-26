package com.mycompany.sistemaflotaconsorcioexpress;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Credenciales fijas
    private static final String USUARIO_VALIDO = "158479";
    private static final String CONTRASENA_VALIDA = "3369";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String usuario = request.getParameter("usuario");
        String password = request.getParameter("password");

        // Verificar credenciales
        if (USUARIO_VALIDO.equals(usuario) && CONTRASENA_VALIDA.equals(password)) {
            HttpSession session = request.getSession();
            session.setAttribute("usuario", "Edinson Bonilla (T.OP)");

            // Redirige a home.jsp si los datos son correctos
            response.sendRedirect("home.jsp");
        } else {
            // Redirige de nuevo a index.jsp con mensaje de error
            response.sendRedirect("index.jsp?error=1");
        }
    }
}
