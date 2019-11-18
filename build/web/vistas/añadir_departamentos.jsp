<%-- 
    Document   : añadir
    Created on : 20-oct-2019, 16:40:45
    Author     : Cristobal
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="modelo.departamentoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar departamento</title>
        <link href="./CSS/listado.css" rel="stylesheet" type="text/css"/>
    </head>
   
    <body>
        
        <div id="contenedor-principal">
            
        <h1>Registrar empleado</h1>
        <jsp:useBean id="cn" class="modelo.departamentoDAO" scope="page"></jsp:useBean>
        <%
            ResultSet rs = cn.mostrarciudades();
         %>   
            
         <form action="Controlador" style="background-color:#fff; text-align: center;" >
             
            RUT:
            <input type="text" name="txtRUT">
            
            Nombre:
            <input type="text" name="txtNombre">
            
            Area:
            <select name="txtArea">
                <option>Seleccione un area</option>
                <%
                while(rs.next()){ 
                %>
                <option type="text"  value="<%=rs.getInt("IDarea")%>"><%=rs.getString("Descripcion")%></option>
                <% }
                rs.close();
                %>
            </select>
          
            Email:
            <input type="text" name="txtEmail">
          
            Contraseña:
            <input type="text"name="txtContraseña">
            
            
            <input type="submit" name="accion" value="agregar">
            
        </form>
            
        </div>
            
    </body>
</html>
