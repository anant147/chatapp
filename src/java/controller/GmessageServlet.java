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
public class GmessageServlet extends HttpServlet {

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
        
        PreparedStatement st1=null;
        int Id=0;
        int val=1;
        Date currentDate = new Date();
            String dateToStr = DateFormat.getDateInstance().format(currentDate); 
            String timeToStr = DateFormat.getTimeInstance(DateFormat.MEDIUM).format(currentDate); 
            
            String sender=request.getParameter("sender");
            String groupname=request.getParameter("groupname");
            String objective=request.getParameter("objective");
            String content=request.getParameter("content");
            
            int ra=0;
            
            try
            {
            String qry="insert into gmessage(Id,sender,groupname,content,date,time,value) values(?,?,?,?,?,?,?)";
            st1=con.prepareStatement(qry);
            
            st1.setInt(1,Id);
            st1.setString(2,sender);
            st1.setString(3,groupname);
            st1.setString(4,content);
            st1.setString(5, dateToStr);
            st1.setString(6, timeToStr);
            st1.setInt(7,val);
            
            ra=st1.executeUpdate();
            
            if(ra>0)
            {
            request.getSession().setAttribute("name",sender);
            request.getSession().setAttribute("groupname",groupname);
            request.getSession().setAttribute("objective",objective);
            
            response.sendRedirect("grouppage.jsp");
            }
            }
            catch(SQLException e)
            {
            out.println(e.getMessage());
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
