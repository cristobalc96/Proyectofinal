<%-- 
    Document   : empleados
    Created on : 18-oct-2019, 8:52:53
    Author     : Cristobal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Control de empleados</title>
         <style type="text/css"> @import "CSS/Estilo_empleados.css"; </style> }
          <style type="text/css">.centrado{text-align:center; }
            .box{ border-radius: 15px; width: 500px; height: 600px; background: rgba(0,0,0,0.10); color: #fff; top: 50%; left: 50%; position: absolute; transform: translate(-50%, -50%); box-sizing: border-box; padding: 70px 30px;} 
        
        </style>
    </head>
    
    <body>   
        <div class="box">
          <h1 class="centrado" >empleados</h1>  
          <a href="Controlador?accion=listado">Listado de empleados</a>
          
          
        </div>
    </body>
</html>
