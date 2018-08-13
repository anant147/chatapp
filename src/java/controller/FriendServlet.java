
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
public class FriendServlet extends HttpServlet {

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
        String member1=request.getParameter("member1");
        String member2=request.getParameter("member2");
        int Id=0;
        
        
        if(type==1)
        {
        PreparedStatement st1=null;
        PreparedStatement st2=null;
        PreparedStatement st3=null;
        int ra1=0;
        int ra2=0;
        int ra3=0;
        
        Date currentDate = new Date();
            String dateToStr = DateFormat.getDateInstance().format(currentDate); 
            String timeToStr = DateFormat.getTimeInstance(DateFormat.MEDIUM).format(currentDate); 
        
        try
        {
        String qry1="insert into friend(Id,member1,member2,value) values(?,?,?,?)";
        st1=con.prepareStatement(qry1);
        int value1=1;
        int value2=2;
        
        st1.setInt(1, Id);
        st1.setString(2,member1);
        st1.setString(3,member2);
        st1.setInt(4, value1);
        
        ra1=st1.executeUpdate();
        
        st2=con.prepareStatement(qry1);
        st2.setInt(1,Id);
        st2.setString(2,member2);
        st2.setString(3,member1);
        st2.setInt(4,value2);
        
        ra2=st2.executeUpdate();
        
        String q2="insert into notification(Id,sender,receiver,content,date,time,kind,value) values(?,?,?,?,?,?,?,?)";
        st3=con.prepareStatement(q2);
        
        String content=member1+" has sent you friend request";
        
        st3.setInt(1,0);
        st3.setString(2, member1);
        st3.setString(3,member2);
        st3.setString(4,content);
        st3.setString(5,dateToStr);
        st3.setString(6,timeToStr);
        st3.setInt(7,2);
        st3.setInt(8,1);
        
        ra3=st3.executeUpdate();
        
        if(ra1==1 && ra2==1 && ra3>0)
        {
        request.getSession().setAttribute("name",member1);
        response.sendRedirect("First.jsp");
        }
        }
        catch(Exception e)
        {
        out.println("sql error and "+e.getMessage());
        }
        }
        else if(type==2)
        {
        PreparedStatement st1=null;
        PreparedStatement st2=null;
        PreparedStatement st3=null;
        int ra3=0;
        
        int ra1=0;
        int ra2=0;
        
        Date currentDate = new Date();
            String dateToStr = DateFormat.getDateInstance().format(currentDate); 
            String timeToStr = DateFormat.getTimeInstance(DateFormat.MEDIUM).format(currentDate); 
        
        try
        {
        String qry1="update friend set value=? where member1=? and member2=?";
        st1=con.prepareStatement(qry1);
        int value=3;
        st1.setInt(1,value);
        st1.setString(2,member1);
        st1.setString(3,member2);
        
        ra1=st1.executeUpdate();
        
        String qry2="update friend set value=? where member1=? and member2=?";
        st2=con.prepareStatement(qry2);
        st2.setInt(1, value);
        st2.setString(2,member2);
        st2.setString(3,member1);
        
        ra2=st2.executeUpdate();
        
         String q2="insert into notification(Id,sender,receiver,content,date,time,kind,value) values(?,?,?,?,?,?,?,?)";
        st3=con.prepareStatement(q2);
        
        String content=member1+" has accepted your friend request.You can chat with him";
        
        st3.setInt(1,0);
        st3.setString(2, member1);
        st3.setString(3,member2);
        st3.setString(4,content);
        st3.setString(5,dateToStr);
        st3.setString(6,timeToStr);
        st3.setInt(7,2);
        st3.setInt(8,1);
        
        ra3=st3.executeUpdate();
        
        
        if(ra1==1 && ra2==1 && ra3>0)
        {
        request.getSession().setAttribute("name", member1);
        response.sendRedirect("First.jsp");
        }
        }
        catch(Exception e)
        {
        out.println("sql error and "+e.getMessage());
        }
        }
        else if(type==3)
        {
        PreparedStatement st1=null;
        PreparedStatement st2=null;
        int ra1=0;
        int ra2=0;
        
        try
        {
        String qry1="delete from friend where member1=? and member2=?";
        st1=con.prepareStatement(qry1);
        
        st1.setString(1,member1);
        st1.setString(2,member2);
        ra1=st1.executeUpdate();
        
        st2=con.prepareStatement(qry1);
        st2.setString(1,member2);
        st2.setString(2,member1);
        ra2=st2.executeUpdate();
        
        if(ra1==1 && ra2==1)
        {
        request.getSession().setAttribute("name",member1);
        response.sendRedirect("First.jsp");
        }
        
        }
        catch(Exception e)
        {
        out.println("sql error and "+e.getMessage());
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
