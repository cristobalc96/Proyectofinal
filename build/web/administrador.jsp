<%@page import="modelo.acceso"%>
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
        <script src="https://code.jquery.com/jquery-3.4.1.js" ></script>
        <script type="text/javascript">
            $(window).on('scroll',function(){
    if ($(window).scrollTop()){
        $('nav').addClass('black');
        
    }else{
        $('nav').removeClass('black');
    }
})
        </script>
  
  <!-- <script> $(document).ready(function(){$('#empleados').click(function(){$("#pagina").load("vistas/empleados.jsp")});     });   </script> -->
        
    </head>
    
    <body>
  
        
        <nav>
            <div class="logo">
            
                <img src="img/Logo1.png" >
                
            </div>
            <ul>
                <li> <a href="vistas/inicio.jsp" target="formulario" class="active"> Inicio </a>  </li>
                <li> <a  href="Controlador?accion=listado"X
                            target="formulario" > Empleados </a>  </li>
                <li> <a href="#"> Departamentos </a>  </li>
                <li> <a href="#" > Cuentas </a>  </li>
                <li> <a href="#" > Cerrar sesion  |  <%= nombre %> </a>  </li>
            </ul>
        </nav>
            
            <section class="home"></section> 
            
            <div class="principal">        
                <iframe src="vistas/inicio.jsp" scrolling="no" style=" background: url(img/wallpaper.png); background-size: cover;" name="formulario"></iframe>
            </div>

        
    </body>
    
     <script src="JS/main.js"></script>
    
</html>
