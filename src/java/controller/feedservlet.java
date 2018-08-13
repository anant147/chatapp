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
import java.text.SimpleDateFormat;
import java.util.Calendar;

/**
 *
 * @author MY ACER
 */
public class feedservlet extends HttpServlet {

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
        int Id=0;    
        String name=request.getParameter("name");
        String feed=request.getParameter("feed");
        String color=request.getParameter("color");
        
        Date currentDate = new Date();
        String dateToStr = DateFormat.getDateInstance().format(currentDate); 
        String timeToStr = DateFormat.getTimeInstance(DateFormat.MEDIUM).format(currentDate); 
            
        PreparedStatement st=null;
        int r=0;
            
            try
            {
            String qry="insert into feed(Id,name,feed,color,date,time) values(?,?,?,?,?,?)";
            st=con.prepareStatement(qry);
            st.setInt(1,Id);
            st.setString(2,name);
            st.setString(3,feed);
            st.setString(4,color);
            st.setString(5,dateToStr);
            st.setString(6,timeToStr);
            
            r=st.executeUpdate();
            
            if(r>0)
            {
            request.getSession().setAttribute("name", name);
            response.sendRedirect("feedform.jsp");
            }
            }
            catch(SQLException e)
            {
            out.println(e.getMessage());
            }
        }
        else if(type==2)
        {
        int Id=Integer.parseInt(request.getParameter("Id"));
        String name=request.getParameter("name");
        PreparedStatement st=null;
        int r=0;
        
        try
        {
        String qry="delete from feed where Id=? and name=?";
        st=con.prepareStatement(qry);
        st.setInt(1,Id);
        st.setString(2,name);
        
        r=st.executeUpdate();
        
        if(r>0)
        {
         request.getSession().setAttribute("name", name);
            response.sendRedirect("feed_user.jsp");
        }
        }
        catch(SQLException e)
        {
        out.println(e.getMessage());
        }
        }
        else if(type==3)
        {
        int Id=Integer.parseInt(request.getParameter("Id"));
        String name=request.getParameter("name");
        String color=request.getParameter("color");
        String feed=request.getParameter("feed");
        
        PreparedStatement st=null;
        int r=0;
        try
        {
        String qry="update feed set color=?,feed=? where Id=? and name=?";
        st=con.prepareStatement(qry);
        st.setString(1,color);
        st.setString(2,feed);
        st.setInt(3,Id);
        st.setString(4,name);
        
        r=st.executeUpdate();
        
        if(r>0)
        {
         request.getSession().setAttribute("name", name);
            response.sendRedirect("feed_user.jsp");
        }
        
        
        }
        catch(SQLException e)
        {
        out.println(e.getMessage());
        }
        }
        else if(type==4)
        {
        Date date = Calendar.getInstance().getTime();  
        DateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");  
        String strDate = dateFormat.format(date);
        
        String sender=request.getParameter("sender");
        String receiver=request.getParameter("receiver");
        String feed=request.getParameter("feed");
        String message=request.getParameter("message");
        
        PreparedStatement st=null;
        int ra=0;
        int Id=0;
        
        message="( "+feed+" )-> "+message;
        try
        {
        String qry="insert into frmessage(Id,sender,receiver,date,message) values(?,?,?,?,?)";
        
        st=con.prepareStatement(qry);
        st.setInt(1,Id);
        st.setString(2,sender);
        st.setString(3,receiver);
        st.setString(4,strDate);
        st.setString(5,message);
        
        ra=st.executeUpdate();
        
        if(ra>0)
        {
        request.getSession().setAttribute("name", sender);
        request.getSession().setAttribute("name1", receiver);
        response.sendRedirect("messagefriend1.jsp");
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
