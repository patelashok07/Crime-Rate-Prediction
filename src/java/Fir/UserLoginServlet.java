/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Fir;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author dell
 */
public class UserLoginServlet extends HttpServlet {

       private Connection conn;
private PreparedStatement ps;
public void init()throws ServletException
{
try{

Class.forName("oracle.jdbc.OracleDriver");
System.out.println("driver load susseccfully");
conn=DriverManager.getConnection("jdbc:oracle:thin:@//DESKTOP-IB4S84P:1521/XE","javabatch","myscholars");
System.out.println("connection open");
ps=conn.prepareStatement("select name from user_account where email=? and pass1=? and pass2=?");
}
catch(Exception ex)
{
System.out.println("exception in init "+ex);
ServletException se=new ServletException();
throw se;
}
}
    protected void processRequest(HttpServletRequest req, HttpServletResponse response)
            throws ServletException, IOException {
      
            response.setContentType("text/html;charset=UTF-8");
        RequestDispatcher rd=null;
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Login page</title>");   
            out.println("<style>body{color:yellow;background-color:rgb(134, 121, 121);font-size:20px;font-weight:bold; text-decoration:underline</style>");
            out.println("</head>");
            out.println("<body>");
 String email=req.getParameter("email");
String pass1=req.getParameter("pass1");
String pass2=req.getParameter("pass2");
 HttpSession sess=req.getSession();
try
{
ps.setString(1,email);
ps.setString(2,pass1);
ps.setString(3,pass2);
ResultSet rs=ps.executeQuery();
if(rs.next())
{
String name=rs.getString(1);
sess.setAttribute("user", name);
response.sendRedirect("UserSection/userSection.jsp");
}
else
{
//out.println("<h2 style='color:red;'>Sorry! invalid userid and password</h2><br>");
//out.println("click to re-login-:<a href='login_page.jsp'>try again</a>");
    out.println("<script>alert('oops!Invalid id and password..try again')</script>");
    rd=req.getRequestDispatcher("user_sign_up.html");
                // out.println("<span style='color:red';>No Books Found!</span>"); 
                  rd.include(req, response);
}
}
catch(SQLException ex)
{
System.out.println("exception in dopost");
//System.out.println(ex.getMessage());
out.println("please come some time later");
}
out.println("</body>");
out.println("</html>");
out.close();
}
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    public void destroy()
{
try
{
conn.close();
System.out.println("conn close");
}
catch(SQLException ex)
{
}
}

}
