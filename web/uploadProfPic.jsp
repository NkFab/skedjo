
<%@page import="org.apache.tomcat.util.http.fileupload.FileItem"%>
<%@page import="org.apache.tomcat.util.http.fileupload.servlet.ServletRequestContext"%>
<%@page import="java.util.*"%>
<%@page import="org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload"%>
<%@page import="java.sql.*"%>
<%
    String u = session.getAttribute("user").toString();
    byte[] b = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/skedjo","root","Nkaka@16628");
        PreparedStatement ps = conn.prepareStatement("UPDATE employee SET photo = ?"
                + "WHERE username = '"+u+"'");
        DiskFileItemFactory factory = new DiskFileItemFactory();

        ServletFileUpload sfu = new ServletFileUpload(factory);
        List items = sfu.parseRequest(new ServletRequestContext(request));

        Iterator iter = items.iterator();

        while (iter.hasNext()) {
            FileItem item = (FileItem) iter.next();
            if (!item.isFormField()) {
                b = item.get();
            }
        }

        ps.setBytes(1, b);
        ps.executeUpdate();
    } catch (Exception e) {
        e.printStackTrace();
        
    }

    response.sendRedirect("modify_account.jsp");
%>