/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import interfaces.CRUD;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Cristobal
 */
public class empleadoDAO implements CRUD {
    
    database db = new database(); 
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    empleado e=new empleado();
    
    
    
    @Override
    public List listado() {
    ArrayList<empleado>list=new ArrayList<>();
    String sql="Select ID_empleado, RUT ,Nombre ,Email ,Contraseña from empleado";
     
    try{
    Class.forName(db.getDriver());
    con=DriverManager.getConnection(db.getUrl(),db.getUser(),db.getContra());
    pst=con.prepareStatement(sql);
    rs=pst.executeQuery();
    
    while(rs.next()){
        empleado emp=new empleado();
        emp.setId(rs.getInt("ID_empleado"));
        emp.setRUT(rs.getString("RUT"));
        emp.setNombre(rs.getString("Nombre"));
        emp.setEmail(rs.getString("Email"));
        emp.setContraseña(rs.getString("Contraseña"));
        list.add(emp);
    }
         
    }catch(Exception e){
         
    }
        return list;
        
        
    }

    @Override
    public empleado list(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean añadir(empleado emp) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean editar(empleado emp) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
