
package modelo;

import interfaces.CRUDdepartamento;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;


public class departamentoDAO implements CRUDdepartamento {

    database db = new database(); 
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    departamento d=new departamento();
    
    @Override
    public List listado() {
      
            ArrayList<departamento>list=new ArrayList<>();
    String sql="Select * from departamento";
     
    try{
        
    Class.forName(db.getDriver());
    con=DriverManager.getConnection(db.getUrl(),db.getUser(),db.getContra());
    pst=con.prepareStatement(sql);
    rs=pst.executeQuery();
    
    while(rs.next()){
        departamento dep=new departamento();
        dep.setId(rs.getString("ID_departamento"));
        dep.setCodigociudad(rs.getString("COD_ciudad"));
        dep.setDireccion(rs.getString("Direccion"));
        dep.setNumero(rs.getInt("Num_departamento"));
        
        list.add(dep);
    }
         
    }catch(Exception e){
         
    }
        return list;  
        
    }

        public ResultSet mostrarciudades(){
        String sql="Select COD_ciudad,Descripcion from ciudad";
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
    public departamento list(String id) {
                String sql="Select * from departamento where ID_departamento ="+id;
     
    try{
    Class.forName(db.getDriver());
    con=DriverManager.getConnection(db.getUrl(),db.getUser(),db.getContra());
    pst=con.prepareStatement(sql);
    rs=pst.executeQuery();
    
    while(rs.next()){
    
        d.setId(rs.getString("ID_departamento"));
        d.setCodigociudad(rs.getString("COD_ciudad"));
        d.setDireccion(rs.getString("Direccion"));
        d.setNumero(rs.getInt("Num_departamento"));

    }
         
    }catch(Exception e){
         
    }

    return d;
    }

    @Override
    public boolean añadir(departamento dep) {
            String sql="INSERT INTO departamento(ID_departamento, COD_ciudad, Direccion, Num_departamento) VALUES ('"+dep.getId()+"','"+dep.getCodigociudad()+"','"+dep.getDireccion()+"','"+dep.getNumero()+"')";
     
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
    public boolean editar(departamento dep) {
           String sql=" UPDATE departamento set COD_ciudad='"+dep.getCodigociudad()+"' ,Direccion='"+dep.getDireccion()+"' ,Num_departamento='"+dep.getNumero()+"' WHERE ID_departamento="+dep.getId();
   
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
    public boolean eliminar(String id) {
             String sql="delete from departamento where ID_departamento="+id; 
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
