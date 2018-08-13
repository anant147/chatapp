/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;


/**
 *
 * @author MY ACER
 */
public class ProfileServlet extends HttpServlet {

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
        out.println("class error and "+e.getMessage());
        }
        catch(SQLException e)
        {
        out.println("dsn error and "+e.getMessage());
        }
        
        int type=Integer.parseInt(request.getParameter("type"));
        String name=request.getParameter("name");
        String status=request.getParameter("status");
        String city=request.getParameter("city");
        String state=request.getParameter("state");
        String education=request.getParameter("education");
        String interest=request.getParameter("interest");
        String hobby=request.getParameter("hobby");
        String view=request.getParameter("view");
        
        if(type==1)
        {
        PreparedStatement st=null;
        int ra=0;
        
        try
        {
        String qry="update profile set status=?,city=?,state=?,education=?,interest=?,hobby=?,view=? where name=?";
        st=con.prepareStatement(qry);
        st.setString(1,status);
        st.setString(2,city);
        st.setString(3,state);
        st.setString(4,education);
        st.setString(5,interest);
        st.setString(6,hobby);
        st.setString(7,view);
        st.setString(8,name);
        
        ra=st.executeUpdate();
        
        if(ra>0)
        {
        request.getSession().setAttribute("name",name);    
        response.sendRedirect("First.jsp");
        }
        else
        {
        out.println("error");
        }
        }
        catch(SQLException e)
        {
        out.println(e.getMessage());
        }
        
        }
        else
        {
        PreparedStatement st=null;
        int ra=0;
        
        try
        {
        String qry="insert into profile(name,status,city,state,education,interest,hobby,view) values(?,?,?,?,?,?,?,?)";
        
        st=con.prepareStatement(qry);
        st.setString(1,name);
        st.setString(2,status);
        st.setString(3,city);
        st.setString(4,state);
        st.setString(5,education);
        st.setString(6,interest);
        st.setString(7,hobby);
        st.setString(8,view);
        
        ra=st.executeUpdate();
        
        if(ra>0)
        {
        request.getSession().setAttribute("name",name);
        response.sendRedirect("First.jsp");
        }
        else
        {
        out.println("error");
        }
        }
        catch(Exception e)
        {
        out.println(e.getMessage());
        }
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
