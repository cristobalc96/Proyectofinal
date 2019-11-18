/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interfaces;

import java.util.List;
import modelo.departamento;

/**
 *
 * @author Cristobal
 */
public interface CRUDdepartamento {
    public List listado();
    public departamento list (String id);
    public boolean añadir(departamento dep);
    public boolean editar(departamento dep);
    public boolean eliminar(String id);
}
