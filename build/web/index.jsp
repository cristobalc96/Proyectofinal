    <%-- 
    Document   : index1
    Created on : 17-oct-2019, 21:41:46
    Author     : Cristobal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="CSS/estiloindex.css">
        
    </head>
    
    <body>

<div class="login-box">
      
    <img src="img/logo.png" class="avatar" >
      <h1>Departamento RRHH</h1>
      
      <form action="loginservidor" method="POST">
        <!-- USERNAME INPUT -->
        <label for="Ingrese Rut de empleado">Ingrese RUT</label>
        <input type="text" name="txtusuario" placerholder="Ingrese su RUT">
        <!-- PASSWORD INPUT -->
        <label for="Clave">Password</label>
        <input type="password" name="txtcontra" placerholder="Contraseña">
        <!-- BOTON INICIAR SESION -->
        <input type="submit" value="Iniciar sesion" name="botoniniciar" placerholder="Iniciar sesion">
     
      </form>
      
</div> 
        
                <%
                    
           int area=0;
            HttpSession sesion = request.getSession();
            
           
           
         if(request.getAttribute("area")!=null ){
                area = (Integer)request.getAttribute("area");
                
                if(area == 2){

                    sesion.setAttribute("nombre", request.getAttribute("nombre"));
                    sesion.setAttribute("area", area);
                    response.sendRedirect("administrador.jsp");
                    
                }else{
                    
                out.print("no ingreso");
                
                }

         }
         
         %>
        
    </body>
    
</html>
