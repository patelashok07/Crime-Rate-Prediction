package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class user_005flogin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("   <head>\n");
      out.write("    <!-- Required meta tags -->\n");
      out.write("    <meta charset=\"utf-8\" />\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\" />\n");
      out.write("\n");
      out.write("    <!-- Bootstrap CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css\" integrity=\"sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk\" crossorigin=\"anonymous\" />\n");
      out.write("\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css\" />\n");
      out.write("\n");
      out.write("    <title>Create a new Account</title>\n");
      out.write("\n");
      out.write("    <style>\n");
      out.write("        body{\n");
      out.write("             background-image: url(\"pics/home.jpg\");\n");
      out.write("        }\n");
      out.write("        .container-fluid .card {\n");
      out.write("            background-image: url(\"pics/home.jpg\");  \n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        .divider {\n");
      out.write("            position: relative;\n");
      out.write("            text-align: center;\n");
      out.write("            margin: 15px 0px;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        .divider span {\n");
      out.write("            padding: 8px;\n");
      out.write("            position: relative;\n");
      out.write("            font-size: 15px;\n");
      out.write("            z-index: 20 !important;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        .divider:after {\n");
      out.write("            content: \"\";\n");
      out.write("            position: absolute;\n");
      out.write("            width: 100%;\n");
      out.write("            border-bottom: 1px solid #ddd;\n");
      out.write("            top: 50%;\n");
      out.write("            left: 0;\n");
      out.write("            z-index: 1 !important;\n");
      out.write("        }\n");
      out.write("           .logo {\n");
      out.write("            width: 100%;\n");
      out.write("            height: 50px;\n");
      out.write("            margin-top: 1%;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        #ist {\n");
      out.write("            color: white;\n");
      out.write("            font-size: 35px;\n");
      out.write("            font-weight: bold;\n");
      out.write("            margin-left: 15px;\n");
      out.write("            font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        #iist {\n");
      out.write("            color: black;\n");
      out.write("            font-size: 20px;\n");
      out.write("            font-weight: bold;\n");
      out.write("            font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        .logo img {\n");
      out.write("            width: 70px;\n");
      out.write("            height: 65px;\n");
      out.write("            border-radius: 30px;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    <!-- going to start signup design -->\n");
      out.write("\n");
      out.write("    <div class=\"container-fluid\">\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("        <div class=\"logo\">\n");
      out.write("            <img src=\"pics/icon2.jpg\"><span id=\"ist\">INDIAN</span>&nbsp;&nbsp;\n");
      out.write("            <span id=\"iist\" style=\"color: red;\">CRIME-RATE</span>&nbsp;\n");
      out.write("            <span id=\"iist\" style=\"color:red;font-size: 18px;\">PREDICTION</span>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <div class=\"card bg-warning\">\n");
      out.write("            <div class=\"card-body mx-auto\">\n");
      out.write("                <h4 class=\"card-title mt-3 text-center\" style=\"color:white;\"><span style=\"color:red;\"><i class=\"fa fa-user-plus\" aria-hidden=\"true\"></i></span>&nbsp;Create Account</h4>\n");
      out.write("                <p class=\"text-center\"style=\"color:white;\">Start learning in best way step by step..</p>\n");
      out.write("\n");
      out.write("                <a href=\"#!\" class=\"btn btn-block btn-danger\">\n");
      out.write("                    <i class=\"fab fa-google\"></i> Login via Google</a>\n");
      out.write("\n");
      out.write("                <a href=\"#!\" class=\"btn btn-block btn-primary\">\n");
      out.write("                    <i class=\"fab fa-facebook-f\"></i> Login via Facebook</a>\n");
      out.write("\n");
      out.write("                <p class=\"divider\">\n");
      out.write("                    <span class=\"bg-light\">OR</span>\n");
      out.write("                </p>\n");
      out.write("\n");
      out.write("                <!-- form started -->\n");
      out.write("\n");
      out.write("                <form action=\"UserAccountServlet\" method=\"post\">\n");
      out.write("                    <!-- name field -->\n");
      out.write("                    <div class=\"form-group input-group\">\n");
      out.write("                        <div class=\"input-group-prepend\">\n");
      out.write("                            <span class=\"input-group-text\">\n");
      out.write("                  <i class=\"fa fa-user\"></i>\n");
      out.write("                </span>\n");
      out.write("                        </div>\n");
      out.write("                        <input type=\"text\" name=\"user\" class=\"form-control\" id=\"exampleInputEmail1\" aria-describedby=\"emailHelp\" placeholder=\"Enter Name\" />\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <!-- email field -->\n");
      out.write("\n");
      out.write("                    <div class=\"form-group input-group\">\n");
      out.write("                        <div class=\"input-group-prepend\">\n");
      out.write("                            <span class=\"input-group-text\">\n");
      out.write("                  <i class=\"fa fa-envelope\"></i>\n");
      out.write("                </span>\n");
      out.write("                        </div>\n");
      out.write("                        <input type=\"email\" name=\"email\" class=\"form-control\" id=\"exampleInputEmail1\" aria-describedby=\"emailHelp\" placeholder=\"Enter Email\" />\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <!-- phone field -->\n");
      out.write("\n");
      out.write("                    <div class=\"form-group input-group\">\n");
      out.write("                        <div class=\"input-group-prepend\">\n");
      out.write("                            <span class=\"input-group-text\">\n");
      out.write("                  <i class=\"fa fa-phone\"></i>\n");
      out.write("                </span>\n");
      out.write("                        </div>\n");
      out.write("                        <select class=\"custom-select\" style=\"max-width: 80px;\">\n");
      out.write("                <option>+91</option>\n");
      out.write("                <option>+92</option>\n");
      out.write("                <option>+93</option>\n");
      out.write("              </select>\n");
      out.write("\n");
      out.write("                        <input type=\"number\" name=\"num\" class=\"form-control\" placeholder=\"Enter Phone\" />\n");
      out.write("                    </div>\n");
      out.write("                    <!--state select-->\n");
      out.write("                      <div class=\"form-group input-group\">\n");
      out.write("                        <div class=\"input-group-prepend\">\n");
      out.write("                            <span class=\"input-group-text\">\n");
      out.write("                 <i class=\"fa fa-globe\" aria-hidden=\"true\"></i>\n");
      out.write("                </span>\n");
      out.write("                        </div>\n");
      out.write("                        <select name=\"state\" class=\"form-control\">\n");
      out.write("                <option selected disabled>--Select User State--</option>\n");
      out.write("                  <option value=\"Andhra Pradesh\">Andhra Pradesh</option>\n");
      out.write("      <option value=\"Assam\">Assam</option>\n");
      out.write("      <option value=\"Bihar\">Bihar</option>\n");
      out.write("      <option value=\"Chandigarh\">Chandigarhr</option>\n");
      out.write("      <option value=\"Chhattisgarh\">Chhattisgarh</option>\n");
      out.write("      <option value=\"Dehli\">Dehli</option>\n");
      out.write("      <option value=\"Goa\">Goa</option>\n");
      out.write("      <option value=\"Gujrat\">Gujrat</option>\n");
      out.write("      <option value=\"Haryana\">Haryana</option>\n");
      out.write("      <option value=\"Jharkhand\">Jharkhand</option>\n");
      out.write("      <option value=\"Kerala\">Kerala</option>\n");
      out.write("      <option value=\"Madhya Pradesh\">Madhya Pradesh</option>\n");
      out.write("      <option value=\"Maharashtra\">Maharashtra</option>\n");
      out.write("      <option value=\"Punjab\">Punjab</option>\n");
      out.write("      <option value=\"Rajasthan\">Rajasthan</option>\n");
      out.write("      <option value=\"Tamil Nadu\">Tamil Nadu</option>\n");
      out.write("      <option value=\"Uttar Pradesh\">Uttar Pradesh</option>\n");
      out.write("              </select>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <!-- user type field -->\n");
      out.write("                    <div class=\"form-group input-group\">\n");
      out.write("                        <div class=\"input-group-prepend\">\n");
      out.write("                            <span class=\"input-group-text\">\n");
      out.write("                  <i class=\"fa fa-building\"></i>\n");
      out.write("                </span>\n");
      out.write("                        </div>\n");
      out.write("                        <select name=\"category\" class=\"form-control\">\n");
      out.write("                <option selected disabled>--Select User Type--</option>\n");
      out.write("                <option>Student</option>\n");
      out.write("                <option>Professional</option>\n");
      out.write("                <option>Admin</option>\n");
      out.write("              </select>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <!-- password field -->\n");
      out.write("\n");
      out.write("                    <div class=\"form-group input-group\">\n");
      out.write("                        <div class=\"input-group-prepend\">\n");
      out.write("                            <span class=\"input-group-text\">\n");
      out.write("                  <i class=\"fa fa-lock\"></i>\n");
      out.write("                </span>\n");
      out.write("                        </div>\n");
      out.write("                        <input type=\"password\" name=\"pass1\" class=\"form-control\" id=\"exampleInputEmail1\" aria-describedby=\"emailHelp\" placeholder=\"Enter Password\" />\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <!-- repeat password field -->\n");
      out.write("\n");
      out.write("                    <div class=\"form-group input-group\">\n");
      out.write("                        <div class=\"input-group-prepend\">\n");
      out.write("                            <span class=\"input-group-text\">\n");
      out.write("                  <i class=\"fa fa-unlock\"></i>\n");
      out.write("                </span>\n");
      out.write("                        </div>\n");
      out.write("                        <input type=\"password\" name=\"pass2\" class=\"form-control\" id=\"exampleInputEmail1\" aria-describedby=\"emailHelp\" placeholder=\"Repeat Password\" />\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <input type=\"submit\" class=\"btn btn-block btn-success\" value=\"Create\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <p class=\"text-center mt-3\">\n");
      out.write("                        <strong><span style=\"color:white; font-size: 22px\">Have an account? <a href=\"login_page.jsp\">Log In</a></span></strong>\n");
      out.write("                    </p>\n");
      out.write("                </form>\n");
      out.write("\n");
      out.write("                <!-- end of form -->\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <!-- jQuery first, then Popper.js, then Bootstrap JS -->\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.5.1.slim.min.js\" integrity=\"sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js\" integrity=\"sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js\" integrity=\"sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI\" crossorigin=\"anonymous\"></script>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
