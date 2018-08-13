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
public class GroupServlet extends HttpServlet {

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
            int value=1;
             Date currentDate = new Date();
            String dateToStr = DateFormat.getDateInstance().format(currentDate); 
            String timeToStr = DateFormat.getTimeInstance(DateFormat.MEDIUM).format(currentDate); 
            String name=request.getParameter("name");
        String groupname=request.getParameter("groupname");
        String objective=request.getParameter("objective");
            
            PreparedStatement st1=null;
            PreparedStatement st2=null;
            int ra=0;
            ResultSet rs=null;
            String qry1="";
            String qry2="";
            
            try
            {
            qry1="select groupname from groups";
            st1=con.prepareStatement(qry1);
            
            
            rs=st1.executeQuery();
            
            int c=0;
            
            while(rs.next())
            {
             if(groupname.equals(rs.getString("groupname")))
             {
             c=1;
             break;
             }
            }
            
            if(c==1)
            {
            out.println("change the name of your group , a group with this name exist");
            }
            else
            {
            try
            {
            
            qry2="insert into groups(Id,name,groupname,objective,value,date,"
                    + "time)"
                    + " values(?,?,?,?,?,?,?)";
            st2=con.prepareStatement(qry2);
            
            st2.setInt(1,Id);
            st2.setString(2,name);
            st2.setString(3,groupname);
            st2.setString(4, objective);
            st2.setInt(5,value);
            st2.setString(6,dateToStr);
            st2.setString(7,timeToStr);
            
            ra=st2.executeUpdate();
            
            if(ra>0)
            {
            request.getSession().setAttribute("name",name);
            request.getSession().setAttribute("groupname",groupname);
            request.getSession().setAttribute("objective",objective);
            
            response.sendRedirect("grouppage.jsp");
            }
                
            }
            catch(SQLException e)
            {
            out.println("error1"+name+" "+groupname+" "+objective+" "+value+" "+dateToStr+" "+timeToStr+" "+e.getMessage());
            }
            }
            }
            catch(SQLException e1)
            {
            out.println(e1.getMessage());
            }
            
        }
        else if(type==2)
        {
            int Id=0;
         String name=request.getParameter("name");
        String groupname=request.getParameter("groupname");
        String objective=request.getParameter("objective");
        String sender=request.getParameter("sender");
        int kind=Integer.parseInt(request.getParameter("kind"));
        int value=3;
        Date currentDate = new Date();
            String dateToStr = DateFormat.getDateInstance().format(currentDate); 
            String timeToStr = DateFormat.getTimeInstance(DateFormat.MEDIUM).format(currentDate); 
            
            PreparedStatement st1=null;
            PreparedStatement st2=null;
            
            int ra1=0;
            int ra2=0;
            String content="";
            try
            {
            String qy1="insert into groups(Id,name,groupname,objective,value,date,time) values(?,?,?,?,?,?,?)";
            st1=con.prepareStatement(qy1);
            
            st1.setInt(1, Id);
            st1.setString(2,name);
            st1.setString(3,groupname);
            st1.setString(4,objective);
            st1.setInt(5,value);
            st1.setString(6,dateToStr);
            st1.setString(7,timeToStr);
            
            ra1=st1.executeUpdate();
            
            String qy2="insert into notification(Id,sender,receiver,content,date,time,kind,value) values(?,?,?,?,?,?,?,?)";
            st2=con.prepareStatement(qy2);
            
            if(kind==1)
            {
            content=sender+" has sent you group request for the "+objective+" group, "+groupname;
            }
            
            int val2=1;
            st2.setInt(1,Id);
            st2.setString(2,sender);
            st2.setString(3, name);
            st2.setString(4,content);
            st2.setString(5, dateToStr);
            st2.setString(6,timeToStr);
            st2.setInt(7,kind);
            st2.setInt(8, val2);
            
            ra2=st2.executeUpdate();
            
            if(ra1>0 && ra2>0)
            {
             request.getSession().setAttribute("name",sender);
            request.getSession().setAttribute("groupname",groupname);
            request.getSession().setAttribute("objective",objective);
            
            
            
            response.sendRedirect("group_addm.jsp");
            }
            
            
            }
            catch(SQLException e)
            {
            out.println(e.getMessage());
            }
        
        
        }
        else if(type==3)
        {
            int Id=0;
        String name=request.getParameter("name");
        String groupname=request.getParameter("groupname");
        String objective=request.getParameter("objective");
        String nm2=request.getParameter("nm2");
        
        int kind=Integer.parseInt(request.getParameter("kind"));
        
        Date currentDate = new Date();
            String dateToStr = DateFormat.getDateInstance().format(currentDate); 
            String timeToStr = DateFormat.getTimeInstance(DateFormat.MEDIUM).format(currentDate); 
        
        PreparedStatement st1=null;
        PreparedStatement st2=null;
        PreparedStatement st3=null;
        int ra1=0;
        int ra2=0;
        int ra3=0;
        int value=2;
        String content="";
        try
        {
        String qry1="update groups set value=?,date=?,time=? where name=? and groupname=? and objective=?";
        st1=con.prepareStatement(qry1);
        
        st1.setInt(1, value);
        st1.setString(2,dateToStr);
        st1.setString(3,timeToStr);
        st1.setString(4, name);
        st1.setString(5, groupname);
        st1.setString(6, objective);
        
        ra1=st1.executeUpdate();
        
        if(kind==1)
        {
         content=name+" has accepted group request sent by you for the "+objective+" group, "+groupname;
        }
        
        String qy2="insert into notification(Id,sender,receiver,content,date,time,kind,value) values(?,?,?,?,?,?,?,?)";
            st2=con.prepareStatement(qy2);
            
            int val2=1;
            st2.setInt(1,Id);
            st2.setString(2,name);
            st2.setString(3,nm2);
            st2.setString(4,content);
            st2.setString(5, dateToStr);
            st2.setString(6,timeToStr);
            st2.setInt(7,kind);
            st2.setInt(8, val2);
            
            ra2=st2.executeUpdate();
            
            String q3="insert into gmessage(Id,sender,groupname,content,date,time,value) values(?,?,?,?,?,?,?);";
            st3=con.prepareStatement(q3);
            
            String content1=name+" added into the group";
            
            st3.setInt(1,0);
            st3.setString(2,name);
            st3.setString(3,groupname);
            st3.setString(4,content1);
            st3.setString(5, dateToStr);
            st3.setString(6, timeToStr);
            st3.setInt(7,2);
            
            ra3=st3.executeUpdate();
            
            
        
        if(ra1>0 && ra2>0 && ra3>0)
        {
        request.getSession().setAttribute("name",name);
            
          request.getSession().setAttribute("groupname",groupname);
            request.getSession().setAttribute("objective",objective);
            response.sendRedirect("group_addm.jsp");  
            
        }
        
        }
        catch(SQLException e)
        {
        out.println(e.getMessage());
        }
        
        }
        else if(type==4)
        {
         int Id=0;
        String name=request.getParameter("name");
        String groupname=request.getParameter("groupname");
        String objective=request.getParameter("objective");
        String nm2=request.getParameter("nm2");
        int kind=Integer.parseInt(request.getParameter("kind"));
        
        Date currentDate = new Date();
            String dateToStr = DateFormat.getDateInstance().format(currentDate); 
            String timeToStr = DateFormat.getTimeInstance(DateFormat.MEDIUM).format(currentDate); 
        
        PreparedStatement st1=null;
        PreparedStatement st2=null;
        int ra1=0;
        int ra2=0;
        int value=4;
        String content="";
        
        try
        {
        String qry1="insert into groups(Id,name,groupname,objective,value,date,time) values(?,?,?,?,?,?,?)";
        st1=con.prepareStatement(qry1);
        
        st1.setInt(1, Id);
            st1.setString(2,name);
            st1.setString(3,groupname);
            st1.setString(4,objective);
            st1.setInt(5,value);
            st1.setString(6,dateToStr);
            st1.setString(7,timeToStr);
            
            ra1=st1.executeUpdate();
            
            content=name+" has asked you to make him the member of the "+objective+" group, "+groupname;
            int val=1;
            
            String qy2="insert into notification(Id,sender,receiver,content,date,time,kind,value) values(?,?,?,?,?,?,?,?)";
            st2=con.prepareStatement(qy2);
            
            int val2=1;
            st2.setInt(1,Id);
            st2.setString(2,name);
            st2.setString(3,nm2);
            st2.setString(4,content);
            st2.setString(5, dateToStr);
            st2.setString(6,timeToStr);
            st2.setInt(7,kind);
            st2.setInt(8, val2);
            
            ra2=st2.executeUpdate();
        
            if(ra1>0 && ra2>0)
        {
        request.getSession().setAttribute("name",name);
            
            
            
            
            response.sendRedirect("group.jsp");
        }
        
        }
        catch(SQLException e)
        {
        out.println(e.getMessage());
        }
        }
        else if(type==5)
        {
        String name=request.getParameter("name");
        String groupname=request.getParameter("groupname");
        String name1=request.getParameter("name1");
        String objective=request.getParameter("objective");
        int kind=Integer.parseInt(request.getParameter("kind"));
        
        Date currentDate = new Date();
            String dateToStr = DateFormat.getDateInstance().format(currentDate); 
            String timeToStr = DateFormat.getTimeInstance(DateFormat.MEDIUM).format(currentDate); 
        
        PreparedStatement st1=null;
        PreparedStatement st2=null;
        PreparedStatement st3=null;
        int ra1=0;
        int ra2=0;
        int ra3=0;
        int value=2;
        String content="";
        
        try
        {
        String qry="update groups set value=?,date=?,time=? where name=? and groupname=?";
        
        st1=con.prepareStatement(qry);
        
        st1.setInt(1, value);
        st1.setString(2,dateToStr);
        st1.setString(3,timeToStr);
        st1.setString(4, name1);
        st1.setString(5, groupname);
        
        ra1=st1.executeUpdate();
        
        String qry1="insert into notification(Id,sender,receiver,content,date,time,kind,value) values(?,?,?,?,?,?,?,?)";
        
        st2=con.prepareStatement(qry1);
        
        if(kind==1)
        {
        content=name+" has accepted your request.Now you are the member of the "+objective+" group - "+groupname;
        }
            
            int val2=1;
            st2.setInt(1,0);
            st2.setString(2,name);
            st2.setString(3,name1);
            st2.setString(4,content);
            st2.setString(5, dateToStr);
            st2.setString(6,timeToStr);
            st2.setInt(7,kind);
            st2.setInt(8, val2);
            
            ra2=st2.executeUpdate();
            
            String q3="insert into gmessage(Id,sender,groupname,content,date,time,value) values(?,?,?,?,?,?,?);";
            st3=con.prepareStatement(q3);
            
            String content1=name+" added "+name1;
            
            st3.setInt(1,0);
            st3.setString(2,name);
            st3.setString(3,groupname);
            st3.setString(4,content1);
            st3.setString(5, dateToStr);
            st3.setString(6, timeToStr);
            st3.setInt(7,2);
            
            ra3=st3.executeUpdate();
            if(ra1>0 && ra2>0 && ra3>0)
            {
            request.getSession().setAttribute("name",name);
            
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
        else if(type==6)
        {
        String name=request.getParameter("name");
        String groupname=request.getParameter("groupname");
        String objective=request.getParameter("objective");
        
        PreparedStatement st=null;
        int ra=0;
        
        try
        {
        String qry="delete from groups where name=? and groupname=?";
        st=con.prepareStatement(qry);
        
        st.setString(1,name);
        st.setString(2,groupname);
        
        ra=st.executeUpdate();
        
        if(ra>0)
        {
        request.getSession().setAttribute("name",name);
        
        response.sendRedirect("group.jsp");
        }
        }
        catch(SQLException e)
        {
        out.println(e.getMessage());
        }
        }
        else if(type==7)
        {
        String name=request.getParameter("name");
        String groupname=request.getParameter("groupname");
        String objective=request.getParameter("objective");
        String name1=request.getParameter("name1");
        
        PreparedStatement st=null;
        int ra=0;
        
        try
        {
        String qry="delete from groups where name=? and groupname=?";
        st=con.prepareStatement(qry);
        
        st.setString(1,name1);
        st.setString(2,groupname);
        
        ra=st.executeUpdate();
        
        if(ra>0)
        {
        request.getSession().setAttribute("name",name);
        request.getSession().setAttribute("groupname",groupname);
        request.getSession().setAttribute("objective",objective);
        
        response.sendRedirect("group_addm.jsp");
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
