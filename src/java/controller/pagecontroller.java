/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import java.text.DateFormat;  
import java.util.Date;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.sql.Connection.*;

/**
 *
 * @author MY ACER
 */
public class pagecontroller extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        Connection con=null;
        
        try
        {
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/chatapp","root","");
        }
        catch(ClassNotFoundException e)
        {
        out.println(" dsn error and "+e.getMessage());
        }
        catch(SQLException e)
        {
        out.println("sql error and "+e.getMessage());
        }
        
        int type=Integer.parseInt(request.getParameter("type"));
        
        if(type==1)
        {
        String name=request.getParameter("name");
        String objective=request.getParameter("objective");
        String groupname=request.getParameter("groupname");
        
        request.getSession().setAttribute("name",name);
            request.getSession().setAttribute("groupname",groupname);
            request.getSession().setAttribute("objective",objective);
            
            response.sendRedirect("grouppage.jsp");
        }
        else if(type==2)
        {
        String name=request.getParameter("name");
        String nadm=request.getParameter("nadm");
        String objective=request.getParameter("objective");
        String groupname=request.getParameter("groupname");
        
        request.getSession().setAttribute("name",name);
            request.getSession().setAttribute("groupname",groupname);
            request.getSession().setAttribute("objective",objective);
            
            
            response.sendRedirect("groupinfo.jsp");
        }
        else if(type==3)
        {
        String name=request.getParameter("name");
       
        String objective=request.getParameter("objective");
        String groupname=request.getParameter("groupname");
        
        request.getSession().setAttribute("name",name);
            request.getSession().setAttribute("groupname",groupname);
            request.getSession().setAttribute("objective",objective);
            
            
            response.sendRedirect("group_addm.jsp");
        }
        else if(type==4)
        {
        String name=request.getParameter("name");
        
         request.getSession().setAttribute("name",name);
         
         response.sendRedirect("notification.jsp");
                 
         
        }
        else if(type==5)
        {
        String name=request.getParameter("name");
        
         request.getSession().setAttribute("name",name);
         
         response.sendRedirect("group.jsp");
        }
        else if(type==6)
        {
        String name=request.getParameter("name");
        
         request.getSession().setAttribute("name",name);
         
         response.sendRedirect("friend.jsp");
        }
        else if(type==7)
        {
        String name=request.getParameter("name");
        
         request.getSession().setAttribute("name",name);
         
         response.sendRedirect("friend.jsp");
        }
        else if(type==8)
        {
         String name=request.getParameter("name");
        
         request.getSession().setAttribute("name",name);
         
         response.sendRedirect("follow.jsp");
        }
        else if(type==9)
        {
        String name=request.getParameter("name");
        String name1=request.getParameter("name1");
        
         request.getSession().setAttribute("name",name);
         request.getSession().setAttribute("name1",name1);
         
         response.sendRedirect("messagefriend1.jsp");
        }
        else if(type==10)
        {
        String name=request.getParameter("name");
        
         request.getSession().setAttribute("name",name);
         
         response.sendRedirect("feed.jsp");
        }
        else if(type==11)
        {
         String name=request.getParameter("name");
        
         request.getSession().setAttribute("name",name);
         
         response.sendRedirect("feedform.jsp");
        }
        else if(type==12)
        {
        String name=request.getParameter("name");
        
         request.getSession().setAttribute("name",name);
         
         response.sendRedirect("feed_user.jsp");
        }
        else if(type==13)
        {
        String name=request.getParameter("name");
        request.getSession().setAttribute("name",name);
          response.sendRedirect("setting.jsp");
        }
        else if(type==14)
        {
        String name=request.getParameter("name");
        request.getSession().setAttribute("name",name);
          response.sendRedirect("Change_Setting.jsp");
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
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
