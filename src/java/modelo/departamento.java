
package modelo;

/**
 *
 * @author Cristobal
 */
public class departamento {

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCodigociudad() {
        return codigociudad;
    }

    public void setCodigociudad(String codigociudad) {
        this.codigociudad = codigociudad;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public departamento(String id, String codigociudad, String direccion, int numero) {
        this.id = id;
        this.codigociudad = codigociudad;
        this.direccion = direccion;
        this.numero = numero;
    }

    public departamento() {

    }
  
    String id;
    String codigociudad;
    String direccion;
    int numero;

    
}
