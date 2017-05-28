<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Administrative</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bootstrap.css" rel="stylesheet">
        <link href="css/bootstrap-theme.css" rel="stylesheet">
        <link href="css/owl.theme.css" rel="stylesheet">
        <link href="css/animate.css" rel="stylesheet" media="screen">
        <!-- styles -->
        <link href="css/styles.css" rel="stylesheet"> 
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
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">${names} ${position} <b class="caret"></b></a>
                            <ul class="dropdown-menu animated fadeInUp">
                                <li><a href="modify_account.jsp">Profile</a></li>
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
                                        <ul class="nav nav-tabs">
                                            <li><a href="settings.jsp">Add employee</a></li>
                                            <li class="active"><a href="create_position.jsp">Create position</a></li>
                                            <li><a href="set_privilege.jsp">Privileges</a></li>
                                            <li><a href="modify_account.jsp">Profile</a></li>
                                            <li><a href="modify_schedule.jsp">Modify schedule</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="panel-body">
                                    <p class="pull-left">What are the position in you company?</p><br>
                                    <form class="form-group" action="createPos.jsp" method="GET">
                                        <section id="wrap">
                                            <div class="pos">
                                                <input class="form-group form-control input-md" placeholder="e.g. Manager, Clerk" type="text" name="posi" required>
                                            </div>
                                            <div class="closePos">

                                            </div>
                                            <div id="1" class="hideIt show-onclick pos">
                                                <input class="form-group form-control input-md" type="text" name="posi1">
                                            </div>
                                            <div id="a" class="closePos hideIt show-onclick">
                                                <button type="button" class="close" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            </div>
                                            <div id="2" class="hideIt show-onclick pos">
                                                <input class="form-group form-control input-md" type="text" name="posi2">
                                            </div>
                                            <div id="b" class="closePos hideIt show-onclick">
                                                <button type="button" class="close" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            </div>
                                            <div id="3" class="hideIt show-onclick pos">
                                                <input class="form-group form-control input-md" type="text" name="posi3">
                                            </div>
                                            <div id="c" class="closePos hideIt show-onclick">
                                                <button type="button" class="close" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            </div>
                                            <div id="4" class="hideIt show-onclick pos">
                                                <input class="form-group form-control input-md" type="text" name="posi4">
                                            </div>
                                            <div id="d" class="closePos hideIt show-onclick">
                                                <button type="button" class="close" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            </div>
                                            <div id="5" class="hideIt show-onclick pos">
                                                <input class="form-group form-control input-md" type="text" name="posi5">
                                            </div>
                                            <div id="e" class="closePos hideIt show-onclick">
                                                <button type="button" class="close" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            </div>
                                            <button type="button" id="additional-files">Add more positions</button>
                                            </br></br></br>
                                            <input class="btn btn-primary btn-block btn-md" type="submit" value="CREATE">
                                        </section>
                                        </br>

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
                                <h5 class="msg pull-left">${msg}</h5><br>
                                <h5 class="msg pull-left">${message}</h5>
                                <h5 class="msgError pull-left">${errorMessage}</h5>

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
        <script type="text/javascript">
            $('#additional-files').click(function () {
                $('.show-onclick').show(100);
            });
            $('#a').click(function () {
                $('#1').hide(100);
                $('#a').hide(100);
            });
            $('#b').click(function () {
                $('#2').hide(100);
                $('#b').hide(100);
            });
            $('#c').click(function () {
                $('#3').hide(100);
                $('#c').hide(100);
            });
            $('#d').click(function () {
                $('#4').hide(100);
                $('#d').hide(100);
            });
            $('#e').click(function () {
                $('#5').hide(100);
                $('#e').hide(100);
            });
        </script>
    </body>
</html>