package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class who_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en-us\">\r\n");
      out.write("    <head>\r\n");
      out.write("        <title>Skedjo</title>\r\n");
      out.write("        <meta charset=\"utf-8\">\r\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("        <link href=\"css/bootstrap.css\" rel=\"stylesheet\" >\r\n");
      out.write("        <link href=\"css/bootstrap-theme.css\" rel=\"stylesheet\">\r\n");
      out.write("        <link href=\"css/owl.theme.css\" rel=\"stylesheet\">\r\n");
      out.write("        <link href=\"css/animate.css\" rel=\"stylesheet\" media=\"screen\">\r\n");
      out.write("        <link href=\"css/owl.theme.css\" rel=\"stylesheet\">\r\n");
      out.write("        <link href=\"css/owl.carousel.css\" rel=\"stylesheet\"> \r\n");
      out.write("        <link href=\"css/css-index.css\" rel=\"stylesheet\" media=\"screen\">\r\n");
      out.write("        \r\n");
      out.write("    </head>\r\n");
      out.write("    <body data-spy=\"scroll\" data-target=\"#navbar-scroll\" class=\"manEmp\">\r\n");
      out.write("        \r\n");
      out.write("        <nav class=\"navbar navbar-inverse navbar-fixed-top\">\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <div class=\"navbar-header\">\r\n");
      out.write("                <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#navbar\" aria-expanded=\"false\" aria-controls=\"navbar\">\r\n");
      out.write("                    <span class=\"sr-only\">Toggle navigation</span>\r\n");
      out.write("                    <span class=\"icon-bar\"></span>\r\n");
      out.write("                    <span class=\"icon-bar\"></span>\r\n");
      out.write("                    <span class=\"icon-bar\"></span>\r\n");
      out.write("                    <span class=\"icon-bar\"></span>\r\n");
      out.write("                </button>\r\n");
      out.write("                <a class=\"navbar-brand\" href=\"#\"><img src=\"images/logo.png\"></a>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div id=\"navbar\" class=\"collapse navbar-collapse\">\r\n");
      out.write("                <ul class=\"nav navbar-nav\">\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <li><a href=\"signin.jsp\">Sign In</a></li>\r\n");
      out.write("                    </li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!--/.nav-collapse -->\r\n");
      out.write("        </div>\r\n");
      out.write("    </nav>\r\n");
      out.write("    \r\n");
      out.write("        <div class=\"let-us\">\r\n");
      out.write("            <h1>Let's make sure you create the right account you need, right?</h1>\r\n");
      out.write("            <br/>\r\n");
      out.write("            <h2>\r\n");
      out.write("                I'am\r\n");
      out.write("            </h2>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <a href=\"#\">\r\n");
      out.write("                <div class=\"jumbotron-who-man\">\r\n");
      out.write("                    <h2>\r\n");
      out.write("                        a Business owner/manager\r\n");
      out.write("                    </h2>\r\n");
      out.write("                    <figure>\r\n");
      out.write("                        <img src=\"icons/manager.png\" height=\"100\" width=\"100\" alt=\"wapi\">\r\n");
      out.write("                    </figure>\r\n");
      out.write("                    <p>\r\n");
      out.write("                        I want to create a new account for my Company\r\n");
      out.write("                    </p>\r\n");
      out.write("                </div>\r\n");
      out.write("           </a>     \r\n");
      out.write("           \r\n");
      out.write("           <a href=\"#\"> \r\n");
      out.write("                <div class=\"jumbotron-who-emp\">\r\n");
      out.write("                    <h2>\r\n");
      out.write("                       an Employee \r\n");
      out.write("                    </h2>\r\n");
      out.write("                    <figure>\r\n");
      out.write("                        <img src=\"icons/Employee.png\" height=\"100\" width=\"100\" alt=\"wapi\">\r\n");
      out.write("                    </figure>\r\n");
      out.write("                    <p>\r\n");
      out.write("                        I want my account to be added to the company's  \r\n");
      out.write("                    </p>\r\n");
      out.write("                </div>\r\n");
      out.write("        </a>\r\n");
      out.write("        <div class=\"footer-sign\">\r\n");
      out.write("            <a href=\"#\">Home</a> | <a  href=\"#\">Privacy Issues </a>\r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("         \r\n");
      out.write("        </footer>\r\n");
      out.write("         <script src=\"js/bootstrap.min.js\"></script>\r\n");
      out.write("         <script src=\"js/bootstrap.js\"></script>\r\n");
      out.write("         <script src=\"js/custom.js\"></script>\r\n");
      out.write("         <script src=\"js/jquery.js\"></script>\r\n");
      out.write("         <script src=\"js/ekko-lightbox-min.js\"></script>\r\n");
      out.write("         <script src=\"js/npm.js\"></script>\r\n");
      out.write("         <script src=\"js/jquery.sticky.js\"></script>\r\n");
      out.write("\t     <script src=\"js/wow.min.js\"></script>\r\n");
      out.write("\t     <script src=\"js/owl.carousel.min.js\"></script>\r\n");
      out.write("\t     <script>\r\n");
      out.write("\t\t     new WOW().init();\r\n");
      out.write("\t     </script>\r\n");
      out.write("         <script src=\"js/bootstrap.js\"></script>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
      out.write("    ");
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
