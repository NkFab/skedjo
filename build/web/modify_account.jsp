<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-us">
    <head>
        <title>Administrative</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bootstrap.css" rel="stylesheet">
        <link href="css/bootstrap-theme.css" rel="stylesheet">
        <link href="css/owl.theme.css" rel="stylesheet">
        <link href="css/animate.css" rel="stylesheet" media="screen">
        <!-- styles -->
        <link href="css/styles.css" rel="stylesheet"> 
        <link href="css/avatar.css" rel="stylesheet">
        <link href="css/owl.carousel.css" rel="stylesheet"> 
        <link href="css/css-index.css" rel="stylesheet" media="screen">
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
                    <a class="navbar-brand page-scroll" href="#">${company}</a>
                </div>
                <div id="navbar" class="collapse navbar-collapse navbar-ex1-collapse pull-right">
                    <ul class="nav navbar-nav">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">${names} ${position}<b class="caret"></b></a>
                            <ul class="dropdown-menu animated fadeInUp">
                                <li><a href="modify_account.jsp">Profile</a></li>
                                <li><a href="logout.jsp">Logout</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>

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
                                        <ul class="nav nav-tabs">
                                            <li><a href="settings.jsp">Add employee</a></li>
                                            <li><a href="create_position.jsp">Create position</a></li>
                                            <li><a href="set_privilege.jsp">Privilege</a></li>
                                            <li  class="active"><a href="modify_account.jsp">Profile</a></li>
                                            <li><a href="modify_schedule.jsp">Modify schedule</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="panel-body">
                                    <div class="col-lg-12">
                                        <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-xs-12">
                                            <div class="full-width">
                                                <form class="form-header" name="frm" action="uploadProfPic.jsp" enctype="multipart/form-data" method="post">
                                                    <input type="file" id="base-input" class="form-control form-group form-input form-style-base input-md" name="uProperty">
                                                    <input type="text" id="fake-input" class="form-control form-group form-input form-style-fake input-md" placeholder="Choose your profile pic" readonly>
                                                    <span class="glyphicon glyphicon-open input-place"></span><br><br><br><br><br>
                                                    <input type="submit" value="UPLOAD" name="goUpload" class="btn btn-primary btn-default btn-block">
                                                </form>
                                            </div>

                                            <!--================== Snippet for custom input type file on button ================-->
                                            <div class="full-width">
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <div class="custom-form">
                                                        <div class="text-center bg-form">
                                                            <div class="img-section">
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
                                                                <img src='getImage.jsp?u=<%=u%>' class="imgCircle" onerror="this.src='images/Profile_avatar_placeholder_large.png'" width="250" height="200">
                                                                <jsp:include page="getImage.jsp" />
                                                                <center>
                                                                    <br><br>
                                                                    <center><button type="button" id="edit"><span class="glyphicon glyphicon-edit"></span>Edit Profile</button></center>

                                                                    <br><br>
                                                                    <form class="form-header" action="edit_account.jsp" method="post">
                                                                        <table>
                                                                            <tr>
                                                                                <td> Username:</td>
                                                                                <td><center><h5><%=rs.getString("username")%></h5></center></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>Names:</td>
                                                                                <td><input class="form-group form-control input-md" name="names" type="text" value='<%=rs.getString("names")%>' readonly="readonly" required/></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>Phone number:</td>
                                                                                <td><input class="form-group form-control input-md" name="phone" type="text" value='<%=rs.getString("phone")%>' readonly="readonly" required/></td>
                                                                            </tr>
                                                                            <%}
                                                                                } catch (Exception e) {
                                                                                    e.printStackTrace();
                                                                                }
                                                                            %>
                                                                        </table>
                                                                        <div class="col-lg-12 col-md-12 text-center">
                                                                            <button class="btn btn-primary btn-default btn-block" id="submit" disabled><span class="glyphicon glyphicon-save"></span> Save</button>
                                                                        </div>
                                                                        <br><br>
                                                                    </form>
                                                                    <button type="button" id="setUpPass">Set up new password ?</button>
                                                                    <br><br>
                                                                    <div class="show-onclick">
                                                                        <form class="form-header" action="set_pass.jsp" method="post">
                                                                            <!-- <table>
                                                                                <tr>
                                                                                    <td>Old Password</td> 
                                                                                    <td><input class="form-group form-control input-md" type="password" required></td> 
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>New password:</td> 
                                                                                    <td><input class="form-group form-control input-md" id="txtNewPassword" type="password" required></td> 
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>Confirm password: </td> 
                                                                                    <td><input class="form-group form-control input-md" id="txtConfirmPassword" type="password" onChange="checkPasswordMatch();" required></td> 
                                                                                </tr>
                                                                            </table> -->
                                                                            <div class="td">
                                                                                <input class="form-group form-control input-md" type="password" id="txtNewPassword" />
                                                                            </div>
                                                                            <div class="td">
                                                                                <input class="form-group form-control input-md" type="password" id="txtConfirmPassword" onChange="checkPasswordMatch();" />
                                                                            </div>
                                                                            <div class="registrationFormAlert" id="divCheckPasswordMatch">
                                                                            </div>
                                                                            <input class="btn btn-primary btn-default btn-block" type="submit" value="SET">
                                                                        </form>
                                                                    </div>
                                                                </center>
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
                    </div>

                    <div class="row">
                        <div class="col-md-12 panel-warning">
                            <div class="content-box-header panel-heading">
                                <div class="panel-title ">New notifications</div>

                                <div class="panel-options">
                                    <a href="#" data-rel="collapse"><i class="glyphicon glyphicon-refresh"></i></a>
                                </div>
                            </div>
                            <div class="content-box-large box-with-header">
                                <p class="msg">${success_message}</p>
                                <p class="msgError">${error_message}</p>
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
        <script src="js/pass.match.js"></script>
        <script type="text/javascript">
        $('input[id=base-input]').change(function () {
            $('#fake-input').val($(this).val().replace("C:\\fakepath\\", ""));
        });
        $('#setUpPass').click(function () {
            $('.show-onclick').show(1000);
        });
        $('#edit').click(function () {
            $('input[type=text]').removeAttr('readonly');
            $('#submit').removeAttr('disabled')
        });

        </script>
    </body>
</html>