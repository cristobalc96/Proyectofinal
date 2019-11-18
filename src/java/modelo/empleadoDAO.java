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
import javax.swing.JOptionPane;

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

    public ResultSet mostrarareas(){
        String sql="Select IDarea,ID_departamento,Descripcion from area";
    try{
        Class.forName(db.getDriver());
    
    con=DriverManager.getConnection(db.getUrl(),db.getUser(),db.getContra());
    pst=con.prepareStatement(sql);
    rs=pst.executeQuery();
    

    }catch(Exception e){
        System.out.println(e);
    }    
        return rs;
    }
    
    
    public ResultSet mostrarcontrato(){
    String sql="Select ID_contrato,Descripcion from contrato";
    
    try{
    
    Class.forName(db.getDriver());
    
    con=DriverManager.getConnection(db.getUrl(),db.getUser(),db.getContra());
    pst=con.prepareStatement(sql);
    rs=pst.executeQuery();
    
    }catch(Exception e){
        System.out.println(e);
    }    
        return rs;
    }
    
      public ResultSet mostrarcargo(){
        String sql="Select ID_cargo,Descripcion from cargo";
    try{
        Class.forName(db.getDriver());
    
    con=DriverManager.getConnection(db.getUrl(),db.getUser(),db.getContra());
    pst=con.prepareStatement(sql);
    rs=pst.executeQuery();
    

    }catch(Exception e){
        System.out.println(e);
    }    
        return rs;
    }
      
    
    @Override
    public empleado list(int id) {
        
          String sql="Select * from empleado where ID_Empleado ="+id;
     
    try{
    Class.forName(db.getDriver());
    con=DriverManager.getConnection(db.getUrl(),db.getUser(),db.getContra());
    pst=con.prepareStatement(sql);
    rs=pst.executeQuery();
    
    while(rs.next()){
    
        e.setId(rs.getInt("ID_empleado"));
        e.setRUT(rs.getString("RUT"));
        e.setNombre(rs.getString("Nombre"));
        e.setEmail(rs.getString("Email"));
        e.setContraseña(rs.getString("Contraseña"));

    }
         
    }catch(Exception e){
         
    }

    return e;
                
    }

    @Override
    public boolean añadir(empleado emp) {
     String sql="INSERT INTO empleado(RUT, IDarea, ID_cargo, ID_contrato ,Nombre ,Email ,Contraseña) VALUES ('"+emp.getRUT()+"','"+emp.getArea()+"','"+emp.getCargo()+"','"+emp.getContrato()+"','"+emp.getNombre()+"','"+emp.getEmail()+"','"+emp.getContraseña()+"')";
     
    try{
    Class.forName(db.getDriver());
    con=DriverManager.getConnection(db.getUrl(),db.getUser(),db.getContra());
    pst=con.prepareStatement(sql);
    pst.executeUpdate();
   
    
     }catch(Exception e){
        JOptionPane.showMessageDialog(null, "actualizar incorrecto :" + e);
     }
     
     return false;
    }

    @Override
    public boolean editar(empleado emp) {
    String sql=" UPDATE empleado set RUT='"+emp.getRUT()+"' ,IDarea='"+emp.getArea()+"' ,ID_cargo='"+emp.getCargo()+"' ,ID_contrato='"+emp.getContrato()+"' ,Nombre='"+emp.getNombre()+"' ,Email='"+emp.getEmail()+"' ,Contraseña='"+emp.getContraseña()+"' WHERE ID_empleado="+emp.getId();
   
    try{
    Class.forName(db.getDriver());
    con=DriverManager.getConnection(db.getUrl(),db.getUser(),db.getContra());
    pst=con.prepareStatement(sql);
    pst.executeUpdate();
   
    
   }catch(Exception e){
         JOptionPane.showMessageDialog(null, "Editar incorrecto :" + e);
   }
    
    return false;
    }

    @Override
    public boolean eliminar(int id) {
       String sql="delete from empleado where ID_Empleado ="+id; 
       try{
    Class.forName(db.getDriver());
    con=DriverManager.getConnection(db.getUrl(),db.getUser(),db.getContra());
    pst=con.prepareStatement(sql);
    pst.executeUpdate();
   
    
   }catch(Exception e){
         JOptionPane.showMessageDialog(null, "Remover incorrecto :" + e);
   }
    
    return false;
    }
    
}
