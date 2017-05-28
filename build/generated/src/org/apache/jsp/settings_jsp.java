package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import com.mysql.jdbc.Driver;

public final class settings_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Administrative</title>\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <!-- Bootstrap -->\n");
      out.write("        <link href=\"css/bootstrap.css\" rel=\"stylesheet\">\n");
      out.write("        <!-- styles -->\n");
      out.write("        <link href=\"css/styles.css\" rel=\"stylesheet\">\n");
      out.write("    </head>\n");
      out.write("    <body class=\"dash\">\n");
      out.write("        <nav class=\"navbar navbar-inverse navbar-fixed-top\" role=\"navigation\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"navbar-header page-scroll\">\n");
      out.write("                    <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\".navbar-ex1-collapse\" aria-expanded=\"false\" aria-controls=\"navbar\">\n");
      out.write("                        <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                    </button>\n");
      out.write("                    ");

                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/skedjo","root","Nkaka@16628");
                        PreparedStatement ps = con.prepareStatement("SELECT names,pos,compName FROM employee"
                                + "WHERE pos = '?' and compName = '' ");
                    
      out.write("\n");
      out.write("                    <a class=\"navbar-brand page-scroll\" href=\"#\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${company}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</a>\n");
      out.write("                </div>\n");
      out.write("                <div id=\"navbar\" class=\"collapse navbar-collapse navbar-ex1-collapse pull-right\">\n");
      out.write("                    <ul class=\"nav navbar-nav\">\n");
      out.write("                        <li class=\"dropdown\">\n");
      out.write("                            <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${names}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(' ');
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${position}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("<b class=\"caret\"></b></a>\n");
      out.write("                            <ul class=\"dropdown-menu animated fadeInUp\">\n");
      out.write("                                <li><a href=\"profile.jsp\">Profile</a></li>\n");
      out.write("                                <li><a href=\"logout.jsp\">Logout</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                <!--/.nav-collapse -->\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("        <div class=\"clear\"></div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"page-content\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-2\">\n");
      out.write("                    <div class=\"sidebar content-box\" style=\"display: block;\">\n");
      out.write("                        <ul class=\"nav\">\n");
      out.write("                            <!-- Main menu -->\n");
      out.write("                            <li><a href=\"dashboard.jsp\"><i class=\"glyphicon glyphicon-home pull-left\"></i> Dashboard</a></li>\n");
      out.write("                            <li><a href=\"schedule.jsp\"><i class=\"glyphicon glyphicon-calendar pull-left\"></i> Schedule</a></li>\n");
      out.write("                            <li><a href=\"time.jsp\"><i class=\"glyphicon glyphicon-stats pull-left\"></i> Timestamp</a></li>\n");
      out.write("                            <li><a href=\"leave.jsp\"><i class=\"glyphicon glyphicon-list pull-left\"></i> Leave</a></li>\n");
      out.write("                            <li><a href=\"staff.jsp\"><i class=\"glyphicon glyphicon-record pull-left\"></i> Staff</a></li>\n");
      out.write("                            <li><a href=\"settings.jsp\"><i class=\"glyphicon glyphicon-pencil pull-left\"></i> Settings</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-md-10\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-12\">\n");
      out.write("                            <div class=\"content-box-large\">\n");
      out.write("                                <div class=\"panel-heading\">\n");
      out.write("                                    <div class=\"panel-title\">\n");
      out.write("                                        <ul class=\"nav nav-tabs\">\n");
      out.write("                                            <li class=\"active\"><a href=\"settings.jsp\">Add employee</a></li>\n");
      out.write("                                            <li><a href=\"create_position.jsp\">Create position</a></li>\n");
      out.write("                                            <li><a href=\"approve_request.jsp\">Approve requests</a></li>\n");
      out.write("                                            <li><a href=\"modify_account.jsp\">Modify accounts</a></li>\n");
      out.write("                                            <li><a href=\"modify_schedule.jsp\">Modify schedule</a></li>\n");
      out.write("                                        </ul>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"panel-body\">\n");
      out.write("                                    <div class=\"col-lg-7\">\n");
      out.write("                                        <form class=\"form-header\" action=\"addEmp.jsp\" role=\"form\" method=\"GET\" id=\"#\">\n");
      out.write("                                            <section>\n");
      out.write("                                            <input class=\"form-group form-control input-md\" placeholder=\"Names\" name=\"nm\" type=\"text\" required>\n");
      out.write("                                            <input class=\"form-group form-control input-md\" placeholder=\"Email\" name=\"em\" type=\"email\" required>\n");
      out.write("                                            <input class=\"form-group form-control input-md\" placeholder=\"Password\" name=\"pss\" type=\"password\" required>\n");
      out.write("                                            <input class=\"form-group form-control input-md\" placeholder=\"Phone number\" name=\"pho\" type=\"text\" required>\n");
      out.write("                                            <select class=\"form-group form-control input-md\" name=\"pos\" required>\n");
      out.write("                                                \n");
      out.write("                                                <option hidden>Position</option>\n");
      out.write("                                                <option></option>\n");
      out.write("                                            </select>\n");
      out.write("                                            <select class=\"form-group form-control input-md\" name=\"gov\" required>\n");
      out.write("                                                <option hidden>Under who</option>\n");
      out.write("                                                <option>\n");
      out.write("                                                </option> \n");
      out.write("                                            </select>\n");
      out.write("                                            </section>\n");
      out.write("                                        </form>\n");
      out.write("                                            <input class=\"btn btn-primary btn-block btn-md\" type=\"submit\" value=\"CREATE\">\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-12 panel-warning\">\n");
      out.write("                            <div class=\"content-box-header panel-heading\">\n");
      out.write("                                <div class=\"panel-title \">New notifications</div>\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"content-box-large box-with-header\">\n");
      out.write("                                <p class=\"msg\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${message}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</p>\n");
      out.write("                                <p class=\"msgError\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${errorMessage}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</p>\n");
      out.write("                                <br /><br />\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"clear\"></div>\n");
      out.write("        <div id=\"footer\" class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                Copyright skedjo 2016\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->\n");
      out.write("        <script src=\"js/jquery.js\"></script>\n");
      out.write("        <!-- Include all compiled plugins (below), or include individual files as needed -->\n");
      out.write("        <script src=\"js/bootstrap.js\"></script>\n");
      out.write("        <script src=\"js/custom.js\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>");
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
