/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.empleado;
import modelo.empleadoDAO;

/**
 *
 * @author Cristobal
 */
public class Controlador extends HttpServlet {


        String listado="vistas/listado.jsp";
        String añadir="vistas/añadir.jsp";
        String editar="vistas/editar.jsp";
        empleado e=new empleado();
        empleadoDAO dao=new empleadoDAO();
        

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
        String acceso="";
        String action=request.getParameter("accion");
        
        if(action.equalsIgnoreCase("listado")){
            acceso=listado;
        }else if(action.equalsIgnoreCase("añadir")){
            acceso=añadir;
        }else if(action.equalsIgnoreCase("agregar")){
            
           String RUT=request.getParameter("txtRUT");
           String Nombre=request.getParameter("txtNombre");
           String Contraseña=request.getParameter("txtContraseña");
           String Email=request.getParameter("txtEmail");
           int Area = Integer.parseInt(request.getParameter("txtArea"));
           String Cargo=request.getParameter("txtCargo");
           String Contrato =request.getParameter("txtContrato");
           e.setRUT(RUT);
           e.setArea(Area);
           e.setCargo(Cargo);
           e.setContrato(Contrato);
           e.setNombre(Nombre);
           e.setEmail(Email);
           e.setContraseña(Contraseña);
          
           dao.añadir(e);
           
           acceso=listado;
           
        }else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("idemp", request.getParameter("id"));
            acceso=editar;
            
        }else if(action.equalsIgnoreCase("actualizar")){
           int id= Integer.parseInt(request.getParameter("txtid"));
           String RUT=request.getParameter("txtRUT");
           String Nombre=request.getParameter("txtNombre");
           String Contraseña=request.getParameter("txtContraseña");
           String Email=request.getParameter("txtEmail");
           int Area = Integer.parseInt(request.getParameter("txtArea"));
           String Cargo=request.getParameter("txtCargo");
           String Contrato =request.getParameter("txtContrato");
           e.setId(id);
           e.setRUT(RUT);
           e.setArea(Area);
           e.setCargo(Cargo);
           e.setContrato(Contrato);
           e.setNombre(Nombre);
           e.setEmail(Email);
           e.setContraseña(Contraseña);
           
           dao.editar(e);
           acceso=listado;
        }else if(action.equalsIgnoreCase("remover")){
          int id= Integer.parseInt(request.getParameter("id")); 
          e.setId(id);
          dao.eliminar(id);
          acceso = listado;
        }
        
        
        RequestDispatcher vista=request.getRequestDispatcher(acceso);
        vista.forward(request, response);
        
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        

        
    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
