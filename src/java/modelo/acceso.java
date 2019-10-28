
package modelo;

import static java.lang.System.out;
import java.sql.*;
import javax.swing.JOptionPane;


public class acceso {
    database db = new database();
    String sql="";
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    
public acceso(){
    
}
  


 public int validar(String usuario , String contra){
       
        int area=0;
       
        try {
            
            Class.forName(db.getDriver());
            con=DriverManager.getConnection(db.getUrl(),db.getUser(),db.getContra());
            sql="SELECT * FROM empleado WHERE RUT ='"+usuario+"' AND Contraseña='"+contra+"' ";
            pst=con.prepareStatement(sql);
            rs=pst.executeQuery();
            
            while (rs.next()) {
                
             area=rs.getInt("IDarea");

            }
            con.close();
            rs.close();
            
            return area;
            
        } catch (SQLException | ClassNotFoundException e) {
            return area;
           
        }
    }

public String usuario(String RUT){
    String obtener = "";
    try {
            
            Class.forName(db.getDriver());
            con=DriverManager.getConnection(db.getUrl(),db.getUser(),db.getContra());
            sql="SELECT Nombre FROM empleado WHERE RUT ='"+RUT+"' ";
            pst=con.prepareStatement(sql);
            rs=pst.executeQuery();
            
            while (rs.next()) {
                
             obtener=rs.getString("Nombre");

            }
            con.close();
            rs.close();
            
            return obtener;
            
        } catch (SQLException | ClassNotFoundException e) {
            return obtener;
           
        }
    
}
 
 
}

