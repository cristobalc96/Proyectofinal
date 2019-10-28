<%-- 
    Document   : añadir
    Created on : 20-oct-2019, 16:40:45
    Author     : Cristobal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registrar empleado</h1>
        <form>
            ID:<br>
            <input type="text" name="txtRUT"><br>
            Nombre:<br>
            <input type="text" name="txtNombre"><br>
            Email:<br>
            <input type="text" name="txtEmail"><br>
            Contraseña:<br>
            <input type="text"name="txtContraseña"><br>
            Ingrese contraseña nuevamente:<br>
            <input type="text"name="txtContraseña2"><br>
            <input type="submit" name="accion" value="agregar"><br>
            
        </form>
    </body>
</html>
