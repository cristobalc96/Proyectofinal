
package interfaces;
import java.util.*;
import modelo.empleado;

public interface CRUD {
    public List listado();
    public empleado list (int id);
    public boolean añadir(empleado emp);
    public boolean editar(empleado emp);
    public boolean eliminar(int id);
    
}
