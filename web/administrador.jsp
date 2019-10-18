<%@page import="clases.acceso"%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@page session="true" %>

<%

acceso acc=new acceso();    
    
 
HttpSession sesion = request.getSession();
String nombre = "";    
String RUT = sesion.getAttribute("nombre").toString();  

if(sesion.getAttribute("area")==null){
    response.sendRedirect("index.jsp");
}else{
    String area = sesion.getAttribute("area").toString();
    if(!area.equals("2")){
            response.sendRedirect("index.jsp");
    }
}

nombre = acc.usuario(RUT);

%>

<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Software Administrativo RRHH</title>
      <style type="text/css"> @import "CSS/Estilo.css"; </style> 
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
         
         <script> $(document).ready(function(){
             
    $('#controlempleados').click(function(){
    $("#pagina").load("Vistas/Paginaprueba.jsp")});
    
      $('#admindepartamentos').click(function(){
    $("#pagina").load("Vistas/departamentos.jsp")});
         
         }); 
    </script>
    
    </head>
    
    <body>
  
        <div class="header">
            
            <h1 style="float:right" > Bienvenid@ <%= nombre %>  </h1>
           
        </div>
              
<div id="navbar">
  <a class="active" href="javascript:void(0)" id="inicio" > <i class="fa fa-fw fa-home"></i> Inicio</a>
  <a href="javascript:void(0)" id="controlempleados"> <i class="fa fa-fw fa-users"></i> Control de empleados</a>
  <a href="javascript:void(0)" id="admindepartamentos" > <i class="fa fa-fw fa-building"></i> Administracion de departamentos</a>
  <a href="javascript:void(0)" > <i class="fa fa-fw fa-id-badge"></i> Administracion de cuentas</a>
  <a href="index.jsp"  > <i class="fa fa-fw fa-angle-down"></i> Cerrar sesion</a>
  
</div>
 
        
        <div class="contenedor" id="pagina" > 
            
            <p> HOLA</p>
           <p> HOLA</p>
           <p> HOLA</p>
           <p> HOLA</p>
           <p> HOLA</p>
           <p> HOLA</p>
           <p> HOLA</p>
           <p> HOLA</p>
           <p> HOLA</p>
           <p> HOLA</p>
           <p> HOLA</p>
           <p> HOLA</p>
           <p> HOLA</p>
           <p> HOLA</p>

               
        </div>
        
        <script src="controlador/main.js"></script>

        
    </body>
</html>
