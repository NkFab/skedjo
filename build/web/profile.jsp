
<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Administrative</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Bootstrap -->
        <link href="css/bootstrap.css" rel="stylesheet">
        <!-- styles -->
        <link href="css/styles.css" rel="stylesheet">
        <link href="css/avatar.css" rel="stylesheet">
    </head>
    <body class="dash">
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header page-scroll">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-ex1-collapse" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <%
                        String com = session.getAttribute("company").toString();
                    %>
                    <a class="navbar-brand page-scroll" href="#"><%out.println(com);%></a>
                </div>
                <div id="navbar" class="collapse navbar-collapse navbar-ex1-collapse pull-right">
                    <ul class="nav navbar-nav">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">${names} ${position}<b class="caret"></b></a>
                            <ul class="dropdown-menu animated fadeInUp">
                                <li><a href="profile.jsp">Profile</a></li>
                                <li><a href="logout.jsp">Logout</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <!--/.nav-collapse -->
            </div>
        </nav>
        <div class="clear"></div>


        <div class="page-content">
            <div class="row">
                <div class="col-md-2">
                    <div class="sidebar content-box" style="display: block;">
                        <ul class="nav">
                            <!-- Main menu -->
                            <li><a href="dashboard.jsp"><i class="glyphicon glyphicon-home pull-left"></i> Dashboard</a></li>
                            <li><a href="schedule.jsp"><i class="glyphicon glyphicon-calendar pull-left"></i> Schedule</a></li>
                            <li><a href="time.jsp"><i class="glyphicon glyphicon-time pull-left"></i> Timestamp</a></li>
                            <li><a href="leave.jsp"><i class="glyphicon glyphicon-log-out pull-left"></i> Leave</a></li>
                            <li><a href="staff.jsp"><i class="glyphicon glyphicon-briefcase pull-left"></i> Staff</a></li>
                            <li><a href="settings.jsp"><i class="glyphicon glyphicon-cog pull-left"></i> Settings</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-10">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="content-box-large">
                                <div class="panel-heading">
                                    <div class="panel-title">
                                    </div>
                                </div>
                                <div class="panel-body">
                                    <div class="col-lg-12">
                                        <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-xs-12">
                                            <div class="full-width">
                                                <input type="file" id="base-input" class="form-control form-input form-style-base">
                                                <input type="text" id="fake-input" class="form-control form-input form-style-fake" placeholder="Choose your File" readonly>
                                                <span class="glyphicon glyphicon-open input-place"></span>
                                            </div>

                                            <!--================== Snippet for custom input type file on button ================-->
                                            <div class="full-width">
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <div class="custom-form">
                                                        <div class="text-center bg-form">
                                                            <div class="img-section">
                                                                <%
                                                                    String id = request.getParameter("id");
                                                                %>
                                                                <img src="getImage.jpg?id=<%=id%>" class="imgCircle" onerror="this.src='images/ImageNotFound.jpg'" width="250" height="250">
                                                                <%
                                                                    String u = session.getAttribute("user").toString();
                                                                    try {
                                                                        Class.forName("com.mysql.jdbc.Driver");
                                                                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/skedjo", "root", "Nkaka@16628");
                                                                        PreparedStatement ps = con.prepareStatement("SELECT username, names, pass, phone, photo FROM employee "
                                                                                + "WHERE username = ? ");
                                                                        ps.setString(1, u);
                                                                        ResultSet rs = ps.executeQuery();
                                                                        while (rs.next()) {%>

                                                                <form class="form-header">
                                                                    
                                                                    <p>Username: </p> <input class="form-group form-control input-md" type="text" value=<%=rs.getString("username")%> />
                                                                    <p>Names: <%=rs.getString("names")%></p>
                                                                    <p>Password: </p><input class="form-group form-control input-md" type="password" value=<%=rs.getString("pass")%> />
                                                                    <p>Phone: <%=rs.getString("phone")%></p>

                                                                    <%}
                                                                        } catch (Exception e) {
                                                                            e.printStackTrace();
                                                                        }
                                                                    %>
                                                                </form>
                                                            </div>

                                                        </div>
                                                        <div class="col-lg-12 col-md-12 text-center">
                                                            <button class="btn btn-info btn-lg custom-btn" id="submit" disabled><span class="glyphicon glyphicon-save"></span> Save</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12 panel-warning">
                            <div class="content-box-header panel-heading">
                                <div class="panel-title ">New notifications</div>

                            </div>
                            <div class="content-box-large box-with-header">
                                <p class="msg">${message}</p>
                                <p class="msgError">${errorMessage}</p>
                                <br /><br />
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>
        <div class="clear"></div>
        <div id="footer" class="container">
            <div class="row">
                Copyright skedjo 2016
            </div>
        </div>

        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.js"></script>
        <script src="js/custom.js"></script>
    </body>
</html>