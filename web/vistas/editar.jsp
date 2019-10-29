<%-- 
    Document   : editar.jsp
    Created on : 20-oct-2019, 16:40:22
    Author     : Cristobal
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="modelo.empleado"%>
<%@page import="modelo.empleadoDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Modificar empleado</h1>
        <jsp:useBean id="cn" class="modelo.empleadoDAO" scope="page"></jsp:useBean>
        
        <%
            ResultSet res = cn.mostrarareas();
            ResultSet res1 = cn.mostrarcargo();
            ResultSet res2 = cn.mostrarcontrato();
            
            empleadoDAO dao=new empleadoDAO();
            int id =Integer.parseInt((String)request.getAttribute("idemp"));
            empleado e=(empleado)dao.list(id);
            
         %>   
            
         <form action="Controlador" style="background-color:#ffffff; text-align: center;">
             
            RUT:<br>
            <input type="text" name="txtRUT" value="<%=e.getRUT()%>"> <br>
            
            Nombre:<br>
            <input type="text" name="txtNombre" value="<%=e.getNombre()%>"><br>
            <br>
            Area:
            <select name="txtArea">
                <option>Seleccione nueva area</option>
                <%
                while(res.next()){ 
                %>
                <option type="text"  value="<%=res.getInt("IDarea")%>"><%=res.getString("Descripcion")%></option>
                <% }
                res.close();
                %>
            </select>
            
            Cargo:
            <select name="txtCargo">
                <option>Seleccione nuevo cargo (actual:<%=e.getCargo()%></option>
                <%
                while(res1.next()){
                %>
                <option type="text"   value="<%=res1.getString("ID_cargo")%> "><%=res1.getString("Descripcion")%></option>
                <% }
                 res1.close();
                 %>
            </select>
            
            Contrato:
            <select name="txtContrato">
                <option>Seleccione nuevo contrato</option>
                <%
                while(res2.next()){ 
                %>
                <option type="text"  value="<%=res2.getString("ID_contrato")%> "><%=res2.getString("Descripcion")%></option>
                <% }
                  res2.close();
                %>
            </select> <br>
            
            Email:<br>
            <input type="text" name="txtEmail" value="<%=e.getEmail()%>"><br>
            
            Contraseña:<br>
            <input type="text" name="txtContraseña" value="<%=e.getContraseña()%>"><br>
            
            <input type="hidden" name="txtid" value="<%=e.getId()%>">
            
            <input type="submit" name="accion" value="actualizar" ><br>
            
        </form>
    </body>
</html>
