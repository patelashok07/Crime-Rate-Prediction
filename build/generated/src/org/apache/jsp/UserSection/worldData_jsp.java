package org.apache.jsp.UserSection;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class worldData_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <head>\n");
      out.write("        <title>Types Of Crimes</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("     <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\">\n");
      out.write("       \n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("        <style>\n");
      out.write("               *{\n");
      out.write("                 margin: 0px;\n");
      out.write("                 padding: 0px;\n");
      out.write("                 box-sizing: border-box;\n");
      out.write("                 \n");
      out.write("             }\n");
      out.write("        body {\n");
      out.write("            background-image: url(\"pics/crime2.jpg\");\n");
      out.write("           \n");
      out.write("          \n");
      out.write("             font-family: Arial, Helvetica, sans-serif;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        .logo {\n");
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
      out.write("        }  \n");
      out.write("        .navbar .collapse ul li {\n");
      out.write("            margin: 1px;\n");
      out.write("            padding: 5px;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        .navbar .collapse a {\n");
      out.write("            font-weight: 500;\n");
      out.write("            font-size: 15px;\n");
      out.write("            margin: 5px;\n");
      out.write("            padding: 10px;\n");
      out.write("            color: white;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        .navbar .collapse a:hover {\n");
      out.write("            transition: 0.5s ease-out;\n");
      out.write("            color: black;\n");
      out.write("            background-color: whitesmoke;\n");
      out.write("           \n");
      out.write("            text-shadow: hotpink;\n");
      out.write("        }\n");
      out.write("        nav{\n");
      out.write("            margin-top: 3%;\n");
      out.write("            height: 50px;\n");
      out.write("            background-color: rgba(0,0,0,0.6);\n");
      out.write("           box-shadow: gray 3px 4px;\n");
      out.write("        }\n");
      out.write("        nav #inp{\n");
      out.write("       margin-top: 1.5%;\n");
      out.write("      position: relative;\n");
      out.write("     \n");
      out.write("      left:15%;\n");
      out.write("       \n");
      out.write("\n");
      out.write("        }\n");
      out.write("        .tab {\n");
      out.write("            border-radius: 5px;\n");
      out.write("            background-color:rgba(0,0,0,0.9);\n");
      out.write("            padding: 10px;\n");
      out.write("            margin-top: 4%;\n");
      out.write("            width: 95%;\n");
      out.write("         \n");
      out.write("            \n");
      out.write("        }\n");
      out.write("        label{\n");
      out.write("            color: white\n");
      out.write("        }\n");
      out.write("        tr,th,td{\n");
      out.write("           \n");
      out.write("            border: ridge 4px black;\n");
      out.write("            \n");
      out.write("        }\n");
      out.write("        tr:nth-child(1){\n");
      out.write("            \n");
      out.write("        }\n");
      out.write("        h2{\n");
      out.write("            color: white;\n");
      out.write("            text-align:center;\n");
      out.write("            font-family:serif;\n");
      out.write("        }\n");
      out.write("       \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("       <div class=\"container-fluid\">\n");
      out.write("        <div class=\"logo\">\n");
      out.write("            <img src=\"pics/icon2.jpg\"><span id=\"ist\">INDIAN</span>&nbsp;&nbsp;\n");
      out.write("            <span id=\"iist\" style=\"color: red;\">CRIME-RATE</span>&nbsp;\n");
      out.write("            <span id=\"iist\" style=\"color:red;font-size: 18px;\">PREDICTION</span>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("       </div>\n");
      out.write("         <nav class=\"navbar navbar-expand-lg  \">\n");
      out.write("        <a class=\"navbar-brand\" href=\"#\" style=\"margin-left:-4%;\"><span style=\"color:black\">INDIAN</span><span style=\"color:red\">Crime</span><span style=\"color:skyblue;\">Investigation</a>\n");
      out.write("        <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("          <span style=\"color:white;\"class=\"navbar-toggler-icon\">+</span>\n");
      out.write("        </button>\n");
      out.write("\n");
      out.write("        <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\" style=\"margin-left:3%\">\n");
      out.write("            <ul class=\"navbar-nav mr-auto\">\n");
      out.write("                <li class=\"nav-item active\">\n");
      out.write("                    <a class=\"nav-link\" href=\"userSection.jsp\">HOME<span class=\"sr-only\">(current)</span></a>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                    <a class=\"nav-link\" href=\"adminSection.html\" >ADD NEW FIR</a>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                    <a class=\"nav-link\" href=\"pro.jsp\">ALLOTED OFFICER</a>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                    <a class=\"nav-link\" href=\"#\">PREDICT RESULT</a>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                    <a class=\"nav-link\" href=\"help.html\" style=\"color: black;\n");
      out.write("            background-color: whitesmoke;text-shadow: hotpink;\">TYPES OF CRIMES</a>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                    <a class=\"nav-link\" href=\"viewfir.jsp\">VIEW ALL FIR</a>\n");
      out.write("                </li>\n");
      out.write("               \n");
      out.write("                <li class=\"nav-item\" id=\"inp\">\n");
      out.write("                     <input type=\"search\" placeholder=\"search crimes\">\n");
      out.write("                </li>\n");
      out.write("\n");
      out.write("            </ul>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("    </nav>\n");
      out.write("    </body>\n");
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
