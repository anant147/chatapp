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
public class notificationservlet extends HttpServlet {

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
        
        int Id=Integer.parseInt(request.getParameter("Id"));
        String receiver=request.getParameter("receiver");
        
        PreparedStatement st=null;
        int r=0;
        int value=2;
        try
        {
        String qry="update notification set value=? where Id=? and receiver=?";
        st=con.prepareStatement(qry);
        st.setInt(1,value);
        st.setInt(2,Id);
        st.setString(3,receiver);
        
        r=st.executeUpdate();
        
        if(r>0)
        {
        request.getSession().setAttribute("name",receiver);
        
        response.sendRedirect("notification.jsp");
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
