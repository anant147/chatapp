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
public class followservlet extends HttpServlet {

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
        PreparedStatement st=null;
        int ra=0;
        String member1=request.getParameter("member1");
        String member2=request.getParameter("member2");
        int Id=0;
        int value=1;
        
        try
        {
        String qry="insert into follow(Id,member1,member2,value) values(?,?,?,?)";
        st=con.prepareStatement(qry);
        st.setInt(1,0);
        st.setString(2,member1);
        st.setString(3,member2);
        st.setInt(4,value);
        
        ra=st.executeUpdate();
        
        if(ra>0)
        {
        request.getSession().setAttribute("name",member1);
        response.sendRedirect("follow.jsp");
        }
        }
        catch(SQLException e)
        {
        out.println(e.getMessage());
        }
        }
        else if(type==2)
        {
        PreparedStatement st=null;
        int ra=0;
        String member1=request.getParameter("member1");
        String member2=request.getParameter("member2");
        
        try
        {
        String qry="delete from follow where member1=? and member2=?";
        st=con.prepareStatement(qry);
        st.setString(1,member1);
        st.setString(2,member2);
        
        ra=st.executeUpdate();
        
        if(ra>0)
        {
        
        request.getSession().setAttribute("name",member1);
        response.sendRedirect("follow.jsp");
        }
        
        }
        catch(SQLException e)
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
