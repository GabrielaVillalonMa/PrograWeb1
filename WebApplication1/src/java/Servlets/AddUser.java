/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.jasper.tagplugins.jstl.core.Catch;

/**
 *
 * @author Marco A Aguirre G
 */
public class AddUser extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            Class.forName("com.mysql.jdbc.Driver");

            // Establecemos la conexión con la base de datos
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydatabase", "root", "lolcats23");
            String Name = request.getParameter("nombreRegist");
            String Apellido = request.getParameter("apellidoRegist");
            String Username = request.getParameter("usernameRegist");
            String Correo = request.getParameter("correoRegist");
            String Password1 = request.getParameter("password");
            String Image1 = "x'89504E470D0A1A0A0000000D4948445200000010000000100802000000909168360000000173524"
                    + "74200AECE1CE90000000467414D410000B18F0BFC6105000000097048597300000EC300000EC301C76FA86400000"
                    + "01E49444154384F6350DAE843126220493550F1A80662426C349406472801006AC91F1040F796BD0000000049454E44AE426082'";

            String DateBirth = request.getParameter("birthdateRegist");
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AddUser</title>");
            out.println("</head>");
            out.println("<body>");

            PreparedStatement stm;

            ResultSet rs;

            String Command = "Insert into tbl_user(`UserName`,`PassWord`,`Nombre`,`Apellido`,`Correo`, `DateBirth`,`DateRegist`,`ProfPic`,`Id_Status`)"
                    + " values ('" + Username + "','" + Password1 + "','" + Name + "','" + Apellido + "','" + Correo + "','" + DateBirth + "',Now()," + Image1 + ",2);";
            // out.println(Command);
            stm = conexion.prepareStatement(Command);
            stm.executeUpdate();

            rs = stm.executeQuery("Select * from tbl_user WHERE `Correo`='" + Correo + "' and `PassWord` ='" + Password1 + "'");
            if (rs.next()) {

                out.println("<h1>Usuario Registrado</h1>");

            } else {

                out.println("<h1>Usuario no Registrado</h1>");

            }

            out.print(" <form action=\"RegistLog.jsp\" method=\"get\"><button>Back</button></form>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AddUser.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(AddUser.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AddUser.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(AddUser.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
