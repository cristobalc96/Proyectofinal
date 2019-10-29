<%-- 
    Document   : añadir
    Created on : 20-oct-2019, 16:40:45
    Author     : Cristobal
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="modelo.empleadoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registrar empleado</h1>
        <jsp:useBean id="cn" class="modelo.empleadoDAO" scope="page"></jsp:useBean>
        <%
            ResultSet rs = cn.mostrarareas();
            ResultSet rs1 = cn.mostrarcargo();
            ResultSet rs2 = cn.mostrarcontrato();
         %>   
            
         <form action="Controlador" style="background-color:#ffffff; text-align: center;" >
             
            RUT:<br>
            <input type="text" name="txtRUT"><br>
            
            Nombre:<br>
            <input type="text" name="txtNombre"><br>
            
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
            
            Cargo:
            <select name="txtCargo">
                <option>Seleccione un cargo</option>
                <%
                while(rs1.next()){
                %>
                <option type="text"   value="<%=rs1.getString("ID_cargo")%> "><%=rs1.getString("Descripcion")%></option>
                <% }
                 rs1.close();
                 %>
            </select>
            
            Contrato:
            <select name="txtContrato">
                <option>Seleccione un contrato</option>
                <%
                while(rs2.next()){ 
                %>
                <option type="text"  value="<%=rs2.getString("ID_contrato")%> "><%=rs2.getString("Descripcion")%></option>
                <% }
                  rs2.close();
                %>
            </select> <br>
            
            Email:<br>
            <input type="text" name="txtEmail"><br>
            
            Contraseña:<br>
            <input type="text"name="txtContraseña"><br>
            
            
            <input type="submit" name="accion" value="agregar"><br>
            
        </form>
    </body>
</html>
