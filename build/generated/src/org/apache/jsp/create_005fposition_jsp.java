package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class create_005fposition_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("  <head>\n");
      out.write("    <title>Administrative</title>\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <!-- Bootstrap -->\n");
      out.write("    <link href=\"css/bootstrap.css\" rel=\"stylesheet\">\n");
      out.write("    <!-- styles -->\n");
      out.write("    <link href=\"css/styles.css\" rel=\"stylesheet\">\n");
      out.write("  </head>\n");
      out.write("  <body class=\"dash\">\n");
      out.write("      <nav class=\"navbar navbar-inverse navbar-fixed-top\" role=\"navigation\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"navbar-header page-scroll\">\n");
      out.write("                <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\".navbar-ex1-collapse\" aria-expanded=\"false\" aria-controls=\"navbar\">\n");
      out.write("                    <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                </button>\n");
      out.write("                <a class=\"navbar-brand page-scroll\" href=\"#\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${company}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</a>\n");
      out.write("            </div>\n");
      out.write("            <div id=\"navbar\" class=\"collapse navbar-collapse navbar-ex1-collapse pull-right\">\n");
      out.write("                <ul class=\"nav navbar-nav\">\n");
      out.write("                    <li class=\"dropdown\">\n");
      out.write("                        <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${names}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(' ');
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${position}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(" <b class=\"caret\"></b></a>\n");
      out.write("\t                        <ul class=\"dropdown-menu animated fadeInUp\">\n");
      out.write("\t                          <li><a href=\"profile.jsp\">Profile</a></li>\n");
      out.write("\t                          <li><a href=\"logout.jsp\">Logout</a></li>\n");
      out.write("\t                        </ul>\n");
      out.write("\t               </li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("            <!--/.nav-collapse -->\n");
      out.write("        </div>\n");
      out.write("    </nav>\n");
      out.write("    <div class=\"clear\"></div>\n");
      out.write("                                \n");
      out.write("\n");
      out.write("    <div class=\"page-content\">\n");
      out.write("    \t<div class=\"row\">\n");
      out.write("\t\t  <div class=\"col-md-2\">\n");
      out.write("\t\t  \t<div class=\"sidebar content-box\" style=\"display: block;\">\n");
      out.write("                <ul class=\"nav\">\n");
      out.write("                    <!-- Main menu -->\n");
      out.write("                    <li><a href=\"dashboard.jsp\"><i class=\"glyphicon glyphicon-home pull-left\"></i> Dashboard</a></li>\n");
      out.write("                    <li><a href=\"schedule.jsp\"><i class=\"glyphicon glyphicon-calendar pull-left\"></i> Schedule</a></li>\n");
      out.write("                    <li><a href=\"time.jsp\"><i class=\"glyphicon glyphicon-stats pull-left\"></i> Timestamp</a></li>\n");
      out.write("                    <li><a href=\"leave.jsp\"><i class=\"glyphicon glyphicon-list pull-left\"></i> Leave</a></li>\n");
      out.write("                    <li><a href=\"staff.jsp\"><i class=\"glyphicon glyphicon-record pull-left\"></i> Staff</a></li>\n");
      out.write("                    <li><a href=\"settings.jsp\"><i class=\"glyphicon glyphicon-pencil pull-left\"></i> Settings</a></li>\n");
      out.write("                </ul>\n");
      out.write("             </div>\n");
      out.write("\t\t  </div>\n");
      out.write("\t\t  <div class=\"col-md-10\">\n");
      out.write("\t\t  \t<div class=\"row\">\n");
      out.write("\t\t  \t\t<div class=\"col-md-12\">\n");
      out.write("\t\t  \t\t\t<div class=\"content-box-large\">\n");
      out.write("\t\t  \t\t\t\t<div class=\"panel-heading\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"panel-title\">\n");
      out.write("                                                            <ul class=\"nav nav-tabs\">\n");
      out.write("                                                                <li><a href=\"settings.jsp\">Add employee</a></li>\n");
      out.write("                                                                <li class=\"active\"><a href=\"create_position.jsp\">Create position</a></li>\n");
      out.write("                                                                <li><a href=\"approve_request.jsp\">Approve requests</a></li>\n");
      out.write("                                                                <li><a href=\"modify_account.jsp\">Modify accounts</a></li>\n");
      out.write("                                                                <li><a href=\"modify_schedule.jsp\">Modify schedule</a></li>\n");
      out.write("                                                            </ul>\n");
      out.write("                                                        </div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t  \t\t\t\t<div class=\"panel-body\">\n");
      out.write("                            <p class=\"pull-left\">What are the position in you company?</p><br>\n");
      out.write("                            <form class=\"form-group\" action=\"createPos.jsp\" method=\"GET\">\n");
      out.write("                           <section id=\"wrap\">\n");
      out.write("                                <div class=\"pos\">\n");
      out.write("                                    <input class=\"form-group form-control input-md\" placeholder=\"e.g. Manager, Clerk\" type=\"text\" name=\"posi\" required>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"closePos\">\n");
      out.write("                                    \n");
      out.write("                                </div>\n");
      out.write("                                <div id=\"1\" class=\"hideIt show-onclick pos\">\n");
      out.write("                                    <input class=\"form-group form-control input-md\" type=\"text\" name=\"posi1\">\n");
      out.write("                                </div>\n");
      out.write("                                <div id=\"a\" class=\"closePos hideIt show-onclick\">\n");
      out.write("                                    <button type=\"button\" class=\"close\" aria-label=\"Close\"><span aria-hidden=\"true\">&times;</span></button>\n");
      out.write("                                </div>\n");
      out.write("                                <div id=\"2\" class=\"hideIt show-onclick pos\">\n");
      out.write("                                    <input class=\"form-group form-control input-md\" type=\"text\" name=\"posi2\">\n");
      out.write("                                </div>\n");
      out.write("                                <div id=\"b\" class=\"closePos hideIt show-onclick\">\n");
      out.write("                                    <button type=\"button\" class=\"close\" aria-label=\"Close\"><span aria-hidden=\"true\">&times;</span></button>\n");
      out.write("                                </div>\n");
      out.write("                                <div id=\"3\" class=\"hideIt show-onclick pos\">\n");
      out.write("                                    <input class=\"form-group form-control input-md\" type=\"text\" name=\"posi3\">\n");
      out.write("                                </div>\n");
      out.write("                                <div id=\"c\" class=\"closePos hideIt show-onclick\">\n");
      out.write("                                    <button type=\"button\" class=\"close\" aria-label=\"Close\"><span aria-hidden=\"true\">&times;</span></button>\n");
      out.write("                                </div>\n");
      out.write("                                <div id=\"4\" class=\"hideIt show-onclick pos\">\n");
      out.write("                                    <input class=\"form-group form-control input-md\" type=\"text\" name=\"posi4\">\n");
      out.write("                                </div>\n");
      out.write("                                <div id=\"d\" class=\"closePos hideIt show-onclick\">\n");
      out.write("                                    <button type=\"button\" class=\"close\" aria-label=\"Close\"><span aria-hidden=\"true\">&times;</span></button>\n");
      out.write("                                </div>\n");
      out.write("                                <div id=\"5\" class=\"hideIt show-onclick pos\">\n");
      out.write("                                    <input class=\"form-group form-control input-md\" type=\"text\" name=\"posi5\">\n");
      out.write("                                </div>\n");
      out.write("                                <div id=\"e\" class=\"closePos hideIt show-onclick\">\n");
      out.write("                                    <button type=\"button\" class=\"close\" aria-label=\"Close\"><span aria-hidden=\"true\">&times;</span></button>\n");
      out.write("                                </div>\n");
      out.write("                               <button type=\"button\" id=\"additional-files\">Add more positions</button>\n");
      out.write("                               </br></br></br>\n");
      out.write("                                <input class=\"btn btn-primary btn-block btn-md\" type=\"submit\" value=\"CREATE\">\n");
      out.write("                                </section>\n");
      out.write("                                </br>\n");
      out.write("                                \n");
      out.write("\t\t  \t\t\t\t</div>\n");
      out.write("\t\t  \t\t\t</div>\n");
      out.write("\t\t  \t\t</div>\n");
      out.write("\t\t  \t</div>\n");
      out.write("\n");
      out.write("\t\t  \t<div class=\"row\">\n");
      out.write("\t\t  \t\t<div class=\"col-md-12 panel-warning\">\n");
      out.write("\t\t  \t\t\t<div class=\"content-box-header panel-heading\">\n");
      out.write("\t  \t\t\t\t\t<div class=\"panel-title \">New notifications</div>\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t  \t\t\t</div>\n");
      out.write("\t\t  \t\t\t<div class=\"content-box-large box-with-header\">\n");
      out.write("                                            <h5 class=\"msg pull-left\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${msg}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h5>\n");
      out.write("                                            <h5 class=\"msg pull-left\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${message}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h5>\n");
      out.write("                                            <h5 class=\"msgError pull-left\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${errorMessage}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h5>\n");
      out.write("                                            \n");
      out.write("                                            <br /><br />\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t  \t\t</div>\n");
      out.write("\t\t  \t</div>\n");
      out.write("\n");
      out.write("\t\t  \t\n");
      out.write("\t\t  </div>\n");
      out.write("\t\t</div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"clear\"></div>\n");
      out.write("     <div id=\"footer\" class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                Copyright skedjo 2016\n");
      out.write("            </div>\n");
      out.write("           </div>\n");
      out.write("    \n");
      out.write("\n");
      out.write("    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->\n");
      out.write("    <script src=\"js/jquery.js\"></script>\n");
      out.write("    <!-- Include all compiled plugins (below), or include individual files as needed -->\n");
      out.write("    <script src=\"js/bootstrap.js\"></script>\n");
      out.write("    <script src=\"js/custom.js\"></script>\n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("            $('#additional-files').click(function() {\n");
      out.write("                $('.show-onclick').show(100);\n");
      out.write("            });\n");
      out.write("            $('#a').click(function(){\n");
      out.write("                $('#1').hide(100);\n");
      out.write("                $('#a').hide(100);\n");
      out.write("            });\n");
      out.write("            $('#b').click(function(){\n");
      out.write("                $('#2').hide(100);\n");
      out.write("                $('#b').hide(100);\n");
      out.write("            });\n");
      out.write("            $('#c').click(function(){\n");
      out.write("                $('#3').hide(100);\n");
      out.write("                $('#c').hide(100);\n");
      out.write("            });\n");
      out.write("            $('#d').click(function(){\n");
      out.write("                $('#4').hide(100);\n");
      out.write("                $('#d').hide(100);\n");
      out.write("            });\n");
      out.write("            $('#e').click(function(){\n");
      out.write("                $('#5').hide(100);\n");
      out.write("                $('#e').hide(100);\n");
      out.write("            });\n");
      out.write("    </script>\n");
      out.write("  </body>\n");
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
