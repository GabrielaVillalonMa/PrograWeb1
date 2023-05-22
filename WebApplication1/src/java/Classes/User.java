/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Classes;

import lombok.Getter;
import lombok.Setter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Base64;
/**
 *
 * @author Marco A Aguirre G
 */
public class User {
    
 @Getter @Setter  public String User,Nombre,Apellido,Correo,Password,BirthDay,ImageData;

    public User(String User, String Nombre, String Apellido, String Correo, String Password, String BirthDay,String ImageData) {
        this.User = User;
        this.Nombre = Nombre;
        this.Apellido = Apellido;
        this.Correo = Correo;
        this.Password = Password;
        this.BirthDay = BirthDay;
        this.ImageData = ImageData;
    }
    
    public User(ResultSet rs) throws SQLException {
        this.User = rs.getString("UserName");
        this.Nombre = rs.getString("Nombre");
        this.Apellido = rs.getString("Apellido");
        this.Correo = rs.getString("Correo");
        this.Password = rs.getString("PassWord");
        this.BirthDay = rs.getString("DateBirth");
        byte[] imageData = rs.getBytes("ProfPic");
         this.ImageData = Base64.getEncoder().encodeToString(imageData);
          
    }
    
}
