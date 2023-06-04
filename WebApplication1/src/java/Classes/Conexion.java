/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Classes;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Marco A Aguirre G
 */
public class Conexion {

    final static String MyUrl = "jdbc:mysql://localhost:3306/mydatabase", MyRoot = "root", MyPassword = "Maag201200.";

    private static Connection Connect() throws ClassNotFoundException, SQLException {

        Class.forName("com.mysql.jdbc.Driver");
        return DriverManager.getConnection(MyUrl, MyRoot, MyPassword);
    }

    public static void ExitUser(String UserID) throws SQLException, ClassNotFoundException {

        try (Connection conn = Connect()) {

            PreparedStatement stm = conn.prepareStatement("Update tbl_user SET Id_Status = " + 2 + " where Id_User= " + UserID);
 stm.executeUpdate();
        }

    }

    public static User VerifyUser(String CorreoInput, String PasswordInput) throws SQLException, ClassNotFoundException {

        try (Connection conn = Connect()) {
            PreparedStatement stm = conn.prepareStatement("Select * from tbl_user WHERE (`Correo`='" + CorreoInput + "' or `UserName`='" + CorreoInput + "' ) and `PassWord` ='" + PasswordInput + "'");
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                stm = conn.prepareStatement("Update tbl_user SET Id_Status = " + 3 + " where Id_User= " + rs.getString("Id_User"));
                stm.executeUpdate();
                return new User(rs);
            }

        }
        return null;

    }

    public static User UserById(int id) throws SQLException, ClassNotFoundException {

        try (Connection conn = Connect()) {
            PreparedStatement stm = conn.prepareStatement("Select * from tbl_user WHERE Id_User=" + id);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                return new User(rs);
            }

        }
        return null;

    }

    
    
  
    public static String GetCategoria(String Publicacion) throws ClassNotFoundException, SQLException {

        try (Connection conn = Connect()) {

            PreparedStatement stm = conn.prepareStatement("Select * from tbl_publicacioncategorias where Id_Post =" + Publicacion);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                return rs.getString("Id_Cat");
            }

        }

        return null;

    }
     
    public static   List<Publicacion> ReadPublication(int Multi,String Where) throws ClassNotFoundException, SQLException{
          List<Publicacion> publications = new ArrayList<>();
        
        try (Connection conn = Connect()) {
         PreparedStatement stm = conn.prepareStatement("Select * from tbl_publicacion "+Where+" Limit "+ Multi*10+",10");
         
                 
            ResultSet rs = stm.executeQuery();
     

            while (rs.next()) {

                Publicacion publication = new Publicacion(rs);
                publications.add(publication);
            }

        }

        return publications;

    }

    public static Publicacion PublicbyId(String ID) throws ClassNotFoundException, SQLException {

        try (Connection conn = Connect()) {
            PreparedStatement stm = conn.prepareStatement("Select * from tbl_publicacion Where Id_Post=" + ID);
            ResultSet rs = stm.executeQuery();

            if (rs.next()) {

                return new Publicacion(rs);
            }
            return null;

        }

    }

    public static List<Publicacion> SearchPubli(String Game, String Pic, String Vid, String File, String Conv, int Multi, String FechaB, String FechaA, String Like) throws ClassNotFoundException, SQLException {
        List<Publicacion> publications = new ArrayList<>();
        String Where = "Where deleted1!=1 ";
        String In = "";
        String Between = "";
        String This = "";

        if (Like != "") {

            This = "Contenido LIKE" + Like + " or Titulo LIKE" + Like;

        }

        if (!"".equals(FechaB)) {

            Between = "DatePublic =>" + FechaB;

        }
        if (!"".equals(FechaA)) {
            if (!"".equals(Between)) {

                Between += " AND ";

            }

            Between = "DatePublic =<" + FechaA;

        }
        if (Game != "") {
            In += Game;
        }
        if (Pic != "") {
            if (In != "") {
                In += "," + Pic;
            } else {

                In += Pic;
            }
        }
        if (Vid != "") {
            if (In != "") {
                In += "," + Vid;
            } else {

                In += Vid;
            }
        }
        if (File != "") {
            if (In != "") {
                In += "," + File;
            } else {

                In += File;
            }
        }
        if (Conv != "") {
            if (In != "") {
                In += "," + Conv;
            } else {

                In += Conv;
            }
        }

        if (In != "") {
            In = "And Id_Cat IN (" + In + ")";
            if (Between != "") {
                Between = "And (" + Between + ")";

            }
        }
        Where += In + Between + This;

        try (Connection conn = Connect()) {
            PreparedStatement stm = conn.prepareStatement("Select * from tbl_publicacion " + Where + " Limit " + Multi * 10 + ",10");
            ResultSet rs = stm.executeQuery();
            int i = 0;

            while (rs.next()) {

                Publicacion publication = new Publicacion(rs);
                publications.add(publication);
            }

        }

        return publications;
    }

}
