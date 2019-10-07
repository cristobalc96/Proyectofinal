<%-- 
    Document   : index
    Created on : 07-10-2019, 0:14:32
    Author     : Cristobal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <div align="center">
            <hr>
        <h1>Iniciar sesion</h1>
        <form action="loginservidor" method="POST">
            
            <input type="text" name="txtusuario" placerholder="Ingrese su RUT"><br>
            <input type="text" name="txtcontraseña" placerholder="Contraseña"><br>
            <br>
            <input type="submit" name="botoniniciar" placerholder="Iniciar sesion"><br>
            
            
        </form>
        </div>
    </body>
</html>
