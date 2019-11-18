<%-- 
    Document   : cuentas
    Created on : 18-oct-2019, 9:05:38
    Author     : Cristobal
--%>

<%@page import="java.util.Iterator"%>
<%@page import="modelo.departamento"%>
<%@page import="java.util.List"%>
<%@page import="modelo.departamentoDAO"%>
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
            
            <label style="color: #fff; font-style: normal; font-family: Arial; font-size: 27px;">Administrar departamentos</label> <br> 
            <a href="Controlador?accion=añadir" style="background: #297681; color: #fff; display: inline-block; margin: 20px; padding: 10px 0px; text-align: center; width: 200px; text-decoration: none; box-shadow: 0px 3pxp 0px #373c3c;">Agregar Nuevo empleado</a> <br>
           <table>
               <thead>
                   <tr>
                       <th>ID</th>
                       <th>CODIGO CIUDAD</th>
                       <th>DIRECCION</th>
                       <th>NUMERO DEPARTAMENTO</th>
                       <th></th>
                   </tr>
               </thead>
               
               <%
                 departamentoDAO dao=new departamentoDAO ();
                 List<departamento>list=dao.listado();
                 Iterator<departamento>iter=list.iterator();
                 departamento dep=null;
                 while(iter.hasNext()){   
                    dep=iter.next();
               %>
               
               <tbody>
                   <tr>
                       <td> <%=  dep.getId() %> </td>
                       <td> <%=  dep.getCodigociudad()%> </td>
                       <td> <%=  dep.getDireccion()%> </td>
                       <td> <%=  dep.getNumero()%> </td>                 
                       <td> 
                           <a id="boton2" style="font-size: 15px;" href="Controlador?accion=editardepartamento&id=<%=dep.getId()%>">Editar</a>
                           <a id="boton2" style="font-size: 15px;" href="Controlador?accion=removerdepartamento&id=<%=dep.getId()%>">Remover</a>
                       </td>
                   </tr>
                   <%}%>
                   
               </tbody>
           </table>

           
           
            
        </div>
       
        
        
        
    </body>
</html>
