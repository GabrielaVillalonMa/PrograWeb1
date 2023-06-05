/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Classes;

import java.io.InputStream;
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

            PreparedStatement stm = conn.prepareStatement("Select * from tbl_publicacion where Id_Post =" + Publicacion);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                return rs.getString("Id_Cat");
            }

        }

        return null;

    }

    public static int GetPagination() throws ClassNotFoundException, SQLException {

        try (Connection conn = Connect()) {

            PreparedStatement stm = conn.prepareStatement("SELECT CEIL(COUNT(*) / 10) AS total_pages FROM tbl_publicacion;");
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {

                return rs.getInt("total_pages");

            }

        }

        return 0;

    }
    public static void RegistPublic(String User,String Categoria,InputStream Imagen,String Contenido) throws ClassNotFoundException, SQLException{
    
        try (Connection conn = Connect()) {

            PreparedStatement stm = conn.prepareStatement("INSERT INTO tbl_publicacion ( Id_User, Media, Contenido, DatePublic, deleted,Id_Cat) VALUES ( "+User+"," +Imagen+", "+Contenido+", Now(), '0',"+Categoria+");");
          stm.executeUpdate();
           

        }
    
    
    
    
    
    }

    public static List<Publicacion> ReadPublication(int Multi, String Where) throws ClassNotFoundException, SQLException {
        List<Publicacion> publications = new ArrayList<>();

        try (Connection conn = Connect()) {
            PreparedStatement stm = conn.prepareStatement("Select * from tbl_publicacion " + Where + " Limit " + Multi * 10 + ",10");

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
        String Where = "Where deleted!=1 ";
        String In = "";
        String Between = "";
        String This = "";

        if (Like != null) {
            if (Like != "") {
                This = " AND Contenido LIKE '%" + Like + "%' or Titulo LIKE '%" + Like + "%'";
            }
        }

        if (Game != null) {
            In += Game;
        }
        if (Pic != null) {
            if (In != "") {
                In += "," + Pic;
            } else {

                In += Pic;
            }
        }
        if (Vid != null) {
            if (In != "") {
                In += "," + Vid;
            } else {

                In += Vid;
            }
        }
        if (File != null) {
            if (In != "") {
                In += "," + File;
            } else {

                In += File;
            }
        }
        if (Conv != null) {
            if (In != "") {
                In += "," + Conv;
            } else {

                In += Conv;
            }
        }

        if (!"".equals(FechaB)) {

            if (In == "") {
                Between += "And";

            }
            Between = " DatePublic >= '" + FechaB + "'";

        }
        if (!"".equals(FechaA)) {
            if (!"".equals(Between)) {

                Between += " AND ";

            }

            Between += " DatePublic <= '" + FechaA + "'";

        }

        if (In != "") {
            In = " And Id_Cat IN (" + In + ")";
            if (Between != "") {
                Between = "And (" + Between + ")";

            }
        }
        Where += In + Between + This;

        try (Connection conn = Connect()) {

            String Command = "Select * from tbl_publicacion " + Where + " Limit " + Multi * 10 + ",10";
            System.out.println(Command);
            PreparedStatement stm = conn.prepareStatement(Command);
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
