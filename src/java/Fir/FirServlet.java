package Fir;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author dell
 */
public class FirServlet extends HttpServlet {

     private Connection conn;
private PreparedStatement ps;
public void init()throws ServletException
{
try{

Class.forName("oracle.jdbc.OracleDriver");
System.out.println("driver load susseccfully");
conn=DriverManager.getConnection("jdbc:oracle:thin:@//DESKTOP-IB4S84P:1521/XE","javabatch","myscholars");
System.out.println("connection open");
ps=conn.prepareStatement("insert into fir values(?,?,?,?,?,?,?,?,?)");
}
catch(Exception ex)
{
System.out.println("exception in init "+ex.getMessage());
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
            out.println("<title>Servlet FirServlet</title>");   
            out.println("<style>{background-image:url('home.jpg')}</style>");
            out.println("</head>");
            out.println("<body>");
String name=req.getParameter("firstname");
String crime=req.getParameter("crimename");
String address=req.getParameter("add");
String gender=req.getParameter("gender");
String date=req.getParameter("date");
String city=req.getParameter("city");
String state=req.getParameter("state");
String phone=req.getParameter("phn");
String email=req.getParameter("eml");

try
{
ps.setString(1,name);
ps.setString(2,crime);
ps.setString(3,address);
ps.setString(4,gender);
ps.setString(5,date);
ps.setString(6,city);
ps.setString(7,state);
ps.setString(8,phone);
ps.setString(9,email);

int rs=ps.executeUpdate();
if(rs>0)
{
rd=req.getRequestDispatcher("AdminSection/adminSection.html");
               out.println("<span style='color:green;position:absolute;top:23%;left:42%;font-weight:500;font-size:20px'>Fir Are Success-fully Recorded</span>");
                rd.include(req, response);
}
else
{
out.println("<string>Sorry! some issues in registratin</strong><br>");
out.println("click to re-signup-:<a href='sign_in_page.html'>try again</a>");
}
}
catch(SQLException ex)
{
System.out.println("exception in dopost");
out.println("please come some time later");
System.out.println(ex.getMessage());
}
out.println("</body>");
out.println("</html>");
out.close();
            
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
public void distroy()
    {
        try
        {
            conn.close();
            
        }
        catch(SQLException ex)
        {
            
        }
    }
          
        }
   



