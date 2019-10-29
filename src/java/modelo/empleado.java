/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author Cristobal
 */
public class empleado {

    int id;
    String RUT;
    int area;
    String cargo;
    String contrato;
    String nombre;
    String email;
    String contraseña; 
    
    public int getArea() {
        return area;
    }

    public void setArea(int area) {
        this.area = area;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public String getContrato() {
        return contrato;
    }

    public void setContrato(String contrato) {
        this.contrato = contrato;
    }
  
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRUT() {
        return RUT;
    }

    public void setRUT(String RUT) {
        this.RUT = RUT;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContraseña() {
        return contraseña;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }
    
    
       public empleado() {

    }
       
    public empleado(String RUT, int area, String cargo, String contrato , String nombre, String email, String contraseña) {
        this.RUT = RUT;
        this.area = area;
        this.cargo = cargo;
        this.contrato = contrato;
        this.nombre = nombre;
        this.email = email;
        this.contraseña = contraseña;
    }
    

    
 
    
    

     
}
