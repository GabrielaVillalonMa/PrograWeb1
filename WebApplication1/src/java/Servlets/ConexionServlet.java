package Servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public ConexionServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        try {
            // Cargamos el driver de MySQL
            Class.forName("com.mysql.jdbc.Driver");

            // Establecemos la conexión con la base de datos
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydatabase", "root", "Maag201200.");

            // Si la conexión fue exitosa, mostramos un mensaje en el navegador
        response.sendRedirect("dashboard2.html");

            // Cerramos la conexión
            conexion.close();
        } catch (ClassNotFoundException | SQLException e) {
            // Si la conexión no fue exitosa, mostramos un mensaje de error en el navegador
            out.println("<html><body><h1>Error en la conexion a la base de datos</h1></body></html>");
        }
    }
}
