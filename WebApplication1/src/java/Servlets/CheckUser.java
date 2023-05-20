/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlets;




import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Base64;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Marco A Aguirre G
 */
public class CheckUser extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.lang.ClassNotFoundException
     * @throws java.sql.SQLException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
         String CorreoInput = request.getParameter("correoLogInicioSes");
        String PasswordInput = request.getParameter("passwordLogInicioSes");
        
        try (PrintWriter out = response.getWriter()) {
              Class.forName("com.mysql.jdbc.Driver");

            // Establecemos la conexión con la base de datos
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydatabase", "root", "lolcats23");
        
              PreparedStatement stm = conexion.prepareStatement("Select * from tbl_user WHERE `Correo`='"+CorreoInput +"' and `PassWord` ='"+PasswordInput +"'");
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                  SeshSet(request,rs); 
                response.sendRedirect("DashVacio.jsp");
                
               
                
                
                
            }else  {
                stm = conexion.prepareStatement("Select * from tbl_user WHERE `UserName`='"+CorreoInput +"' and `PassWord` ='"+PasswordInput +"'");
             rs = stm.executeQuery();

                
                if (rs.next()) {
                      SeshSet(request,rs); 
                      response.sendRedirect("DashVacio.jsp");
                }else{ out.println("<script type=\"text/javascript\">");  
out.println("alert('Algun dato a sido incorrecto');");  
out.println("</script>");}
                
                
       

            
            }
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
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(CheckUser.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(CheckUser.class.getName()).log(Level.SEVERE, null, ex);
        }
        
       
        
        try {
            
           
            
        } catch (Exception e) {
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

    static void SeshSet(HttpServletRequest request, ResultSet rs) {
   
          HttpSession MySesh = request.getSession();
        try { 
            MySesh.setAttribute("User",rs.getString("UserName"));
            MySesh.setAttribute("Nombre", rs.getString("Nombre"));
              MySesh.setAttribute("Apellido", rs.getString("Apellido"));
                MySesh.setAttribute("Correo", rs.getString("Correo"));
                  MySesh.setAttribute("Password", rs.getString("PassWord"));
                    MySesh.setAttribute("BirthDay", rs.getDate("DateBirth"));
                    
   
                    
                    
           
            byte[] imageData =  rs.getBytes("ProfPic");
   String base64Image = Base64.getEncoder().encodeToString(imageData);
              MySesh.setAttribute("ImageData", base64Image);  
        } catch (SQLException ex) {
            Logger.getLogger(CheckUser.class.getName()).log(Level.SEVERE, null, ex);
        }
  }
    
}
