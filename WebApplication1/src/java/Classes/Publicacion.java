/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Classes;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Base64;
/**
 *
 * @author Marco A Aguirre G
 */
public class Publicacion {
    public String IdPublicacion,Title,Content,Media,DatePublic,Categoria;
    public User Dueño;
    public boolean Deleted;

    public Publicacion(String IdPublicacion, User Dueño, String Title,String Categoria, String Content, String Media, String DatePublic, boolean Deleted) {
        this.IdPublicacion = IdPublicacion;
        this.Dueño = Dueño;
        this.Title = Title;
        this.Content = Content;
        this.Media = Media;
        this.DatePublic = DatePublic;
        this.Deleted = Deleted;
        this. Categoria = Categoria;
    }
    
    public Publicacion(ResultSet rs) throws SQLException, ClassNotFoundException {
        this.IdPublicacion = rs.getString("Id_Post");
        this.Dueño = Conexion.UserById(rs.getInt("Id_User"));
        this.Title = rs.getString("Titulo");
        this.Content = rs.getString("Contenido");
         byte[] imageData = rs.getBytes("Media");
         if(imageData !=null){ this.Media = Base64.getEncoder().encodeToString(imageData);}
         else{this.Media= null;}
       
        this.DatePublic = rs.getString("Id_Post");
        this.Deleted = rs.getBoolean("deleted");
        this.Categoria = Conexion.GetCategoria(IdPublicacion);
    }
    
    
}