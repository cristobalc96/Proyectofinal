<%-- 
    Document   : editar.jsp
    Created on : 20-oct-2019, 16:40:22
    Author     : Cristobal
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="modelo.departamento"%>
<%@page import="modelo.departamentoDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar empleado</title>
         <link href="./CSS/form.css" rel="stylesheet" type="text/css"/>
    </head>
    
    <body>
       
        
        
        <jsp:useBean id="cn" class="modelo.departamentoDAO" scope="page"></jsp:useBean>
        
        <%
            ResultSet res = cn.mostrarciudades();

            
            departamentoDAO dao=new departamentoDAO();
            String id =(String)request.getAttribute("idemp");
            departamento d=(departamento)dao.list(id);
            
         %>   
            
         <form action="Controlador" style="text-align: center;">
             <label style="color: #fff; font-style: normal; font-family: Arial; font-size: 27px;">Modificar empleado</label><br>
             
            ID de departamento:<br>
            <input type="text" name="txtid" value="<%=d.getId()%>" disabled><br>

            <br>Ciudad:
            <select name="txtcodigo" style="width: 30%; height: 20px;">
                
                <option>Seleccione nueva ciudad </option>
                <%
                while(res.next()){ 
                %>
                <option type="text"  value="<%=res.getInt("COD_ciudad")%>"><%=res.getString("Descripcion")%></option>
                <% }
                res.close();
                %>
            </select>

             <br>Direccion:<br>
            <input type="text" name="txtdireccion" value="<%=d.getDireccion()%>"><br>
            
            Numero de departamento:<br>
            <input type="text" name="txtnumero" value="<%=d.getNumero()%>"><br>
            
            <input type="hidden" name="txtid" value="<%=d.getId()%>"><br>
            
            <input type="submit" name="accion" value="actualizar"><br>
            
        </form>
        
    </body>
</html>
