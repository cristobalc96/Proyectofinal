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
    $("#pagina").load("vistas/empleados.jsp")});
    
      $('#admindepartamentos').click(function(){
    $("#pagina").load("vistas/departamentos.jsp")});
    
          $('#cuentas').click(function(){
    $("#pagina").load("vistas/cuentas.jsp")});
         
         }); 
    </script>
    
    
<script>

	$(document).ready(function(e) {
		$('#pagina').load('vistas/inicio.jsp', function(data) {
			$(this).html(data);
		});
	});
</script>
    
    </head>
    
    <body onload="load()">
  
        <div class="header">
            
            <h1 style="float:right" > Bienvenid@ <%= nombre %>  </h1>
           
        </div>
              
<div id="navbar">
  <a class="active" href="javascript:void(0)" id="inicio" > <i class="fa fa-fw fa-home"></i> Inicio</a>
  <a href="javascript:void(0)" id="controlempleados"> <i class="fa fa-fw fa-users"></i> Control de empleados</a>
  <a href="javascript:void(0)" id="admindepartamentos" > <i class="fa fa-fw fa-building"></i> Administracion de departamentos</a>
  <a href="javascript:void(0)" id="cuentas" > <i class="fa fa-fw fa-id-badge"></i> Administracion de cuentas</a>
  <a href="index.jsp"  > <i class="fa fa-fw fa-angle-down"></i> Cerrar sesion</a>
  
</div>
 
        
        <div class="contenedor" id="pagina" > 
            


               
        </div>
        
       

        
    </body>
    
     <script src="JS/main.js"></script>

    
</html>
