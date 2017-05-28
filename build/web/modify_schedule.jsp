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
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">${names} ${position}<b class="caret"></b></a>
	                        <ul class="dropdown-menu animated fadeInUp">
	                          <li><a href="profile.jsp">Profile</a></li>
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
                                                                <li><a href="modify_account.jsp">Profile</a></li>
                                                                <li class="active"><a href="modify_schedule.jsp">Modify schedule</a></li>
                                                            </ul>
                                                        </div>
						</div>
		  				<div class="panel-body">
		  					Ut tristique adipiscing mauris, sit amet suscipit metus porta quis. Donec dictum tincidunt erat, eu blandit ligula. Nam sit amet dolor sapien. Quisque velit erat, congue sed suscipit vel, feugiat sit amet enim. Suspendisse interdum enim at mi tempor commodo. Sed tincidunt sed tortor eu scelerisque. Donec luctus malesuada vulputate. Nunc vel auctor metus, vel adipiscing odio. Aliquam aliquet rhoncus libero, at varius nisi pulvinar nec. Aliquam erat volutpat. Donec ut neque mi. Praesent enim nisl, bibendum vitae ante et, placerat pharetra magna. Donec facilisis nisl turpis, eget facilisis turpis semper non. Maecenas luctus ligula tincidunt iasdsd vitae ante et, 
				  			<br /><br />
				  			Interdum et malesuada fames ac ante ipsum primis in faucibus. Quisque sed consectetur erat. Maecenas in elementum libero. Sed consequat pellentesque ultricies. Ut laoreet vehicula nisl sed placerat. Duis posuere lectus n, eros et hendrerit pellentesque, ante magna condimentum sapien, eget ultrices eros libero non orci. Etiam varius diam lectus.
							<br /><br />
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
		  			Notifications will go here<br/>
			  			Pellentesque luctus quam quis consequat vulputate. Sed sit amet diam ipsum. Praesent in pellentesque diam, sit amet dignissim erat. Aliquam erat volutpat. Aenean laoreet metus leo, laoreet feugiat enim suscipit quis. Praesent mauris mauris, ornare vitae tincidunt sed, hendrerit eget augue. Nam nec vestibulum nisi, eu dignissim nulla.
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