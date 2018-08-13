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
import javax.servlet.http.HttpSession;

/**
 *
 * @author MY ACER
 */
public class passwordforget extends HttpServlet {

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
        String qry="";
        ResultSet rs=null;
        String name=request.getParameter("name");
        String username=request.getParameter("username");
        String mobile=request.getParameter("mobile");
        String email=request.getParameter("email");
        
        try
        {
        qry="select password from user where name=? and username=? and mobile=? and email=?";
        st=con.prepareStatement(qry);
        st.setString(1,name);
        st.setString(2,username);
        st.setString(3,mobile);
        st.setString(4,email);
        
        rs=st.executeQuery();
        
        if(rs.next())
        {
        request.getSession().setAttribute("name", name);
        request.getSession().setAttribute("email", email);
        response.sendRedirect("confirmpassword.jsp");
        }
        else
        {
        out.println("To change password, provide correct information.");
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
        String qry="";
        int r=0;
        String name=request.getParameter("name");
        String email=request.getParameter("email");
        String password=request.getParameter("password");
        
        try
        {
        qry="update user set password=? where name=? and email=?";
        
        st=con.prepareStatement(qry);
        st.setString(1,password);
        st.setString(2,name);
        st.setString(3,email);
        
        r=st.executeUpdate();
        
        if(r>0)
        {
        HttpSession session=request.getSession();
        session.invalidate();
        
        out.println("your password is changed successfully");
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
