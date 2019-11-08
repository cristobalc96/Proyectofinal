<%-- 
    Document   : cuentas
    Created on : 18-oct-2019, 9:05:38
    Author     : Cristobal
--%>

<%@page import="java.util.Iterator"%>
<%@page import="modelo.empleado"%>
<%@page import="java.util.List"%>
<%@page import="modelo.empleadoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administracion de cuenta usuario</title>
        <link href="./CSS/listado.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="contenedor-principal" class="box">
            
            <label style="color: #fff; font-style: normal; font-family: Arial; font-size: 27px;">Administrar registros de empleados</label> <br> 
            <a href="Controlador?accion=añadir" style="background: #297681; color: #fff; display: inline-block; margin: 20px; padding: 10px 0px; text-align: center; width: 200px; text-decoration: none; box-shadow: 0px 3pxp 0px #373c3c;">Agregar Nuevo empleado</a> <br>
           <table>
               <thead>
                   <tr>
                       <th>ID</th>
                       <th>RUT</th>
                       <th>NOMBRE</th>
                       <th>EMAIL</th>
                       <th>CONTRASEÑA</th>
                       <th></th>
                   </tr>
               </thead>
               
               <%
                 empleadoDAO dao=new empleadoDAO();
                 List<empleado>list=dao.listado();
                 Iterator<empleado>iter=list.iterator();
                 empleado emp=null;
                 while(iter.hasNext()){   
                    emp=iter.next();
               %>
               
               <tbody>
                   <tr>
                       <td> <%=  emp.getId() %> </td>
                       <td> <%=  emp.getRUT() %> </td>
                       <td> <%=  emp.getNombre() %> </td>
                       <td> <%=  emp.getEmail() %> </td>
                       <td> <%=  emp.getContraseña() %> </td>                     
                       <td> 
                           <a id="boton2" style="font-size: 15px;" href="Controlador?accion=editar&id=<%=emp.getId()%>">Editar     </a>
                           <a id="boton2" style="font-size: 15px;" href="Controlador?accion=remover&id=<%=emp.getId()%>">Remover</a>
                       </td>
                   </tr>
                   <%}%>
                   
               </tbody>
           </table>

           
           
            
        </div>
       
        
        
        
    </body>
</html>
