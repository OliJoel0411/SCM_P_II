package config;
import java.sql.Connection;
import java.sql.DriverManager;
/**
 *
 * @author oliverjoelloconlopez
 */
public class Conexion {
    Connection con;
    public Conexion(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sistema_muestras","root","olijoel0411.");            
        } catch (Exception e) {
            System.err.println("Error"+e);
        }
    }
    public Connection getConnection(){
        return con;
    }
}