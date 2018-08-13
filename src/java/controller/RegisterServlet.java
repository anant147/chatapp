
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
public class RegisterServlet extends HttpServlet {

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
        System.out.println(e.getMessage());
        }
        catch(SQLException e)
        {
        System.out.println(e.getMessage());
        }
        
       
        
       
        String name=request.getParameter("name");
        String email=request.getParameter("email");
        String password=request.getParameter("password");
        String mobile=request.getParameter("mobile");
        String username=request.getParameter("username");
       
        
        
        
        int ra=0;
        PreparedStatement st=null;
        String qry="";
        
       try
       {
        qry="insert into user(name,email,password,mobile,username) values(?,?,?,?,?)";
        
        st=con.prepareStatement(qry);
      
        st.setString(1,name);
        st.setString(2,email);
        st.setString(3,password);
        st.setString(4,mobile);
        st.setString(5,username);
        
        ra=st.executeUpdate();
        
        
        
       
        
        if(ra==1)
            out.println("registration of "+name+" is successful");
        else
            out.println("registration unsuccessful");
       }
    catch(Exception e)
    {
        out.println(e.toString());
    out.println("error");
    e.printStackTrace();
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
