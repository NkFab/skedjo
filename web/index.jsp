<%@page import="com.sun.corba.se.impl.protocol.giopmsgheaders.Message"%>
<!DOCTYPE html>
<html lang="en-us">
    <head>
        <title>Skedjo</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/bootstrap.css" rel="stylesheet" >
        <link href="css/bootstrap-theme.css" rel="stylesheet">
        <link href="css/owl.theme.css" rel="stylesheet">
        <link href="css/animate.css" rel="stylesheet" media="screen">
        <link href="css/owl.carousel.css" rel="stylesheet"> 
        <link href="css/css-index.css" rel="stylesheet" media="screen">
        <link href="css/scrolling-nav.css" rel="stylesheet">

    </head>
    <body data-spy="scroll" data-target="#navbar-scroll">

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

                    <span class="page-scroll pull-left logo"><a href="#home">skedjo</a></span>
                </div>
                <div id="navbar" class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav pull-right">
                        <li><a class="page-scroll" href="#home">Home</a></li>
                        <li><a class="page-scroll" href="#features">Features</a></li>
                        <li><a class="page-scroll" href="#about">About</a></li>
                        <li><a class="page-scroll" href="#contact">Contact</a></li>
                    </ul>
                </div>
                <!--/.nav-collapse -->
            </div>
        </nav>
        <section id="home" class="home-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-7" id="hometext">
                        <!-- /.main title -->
                        <h1 class="wow fadeInLeft">
                            Effective schedule maker
                        </h1>


                        <div class="landing-text wow fadeInUp">
                            <p>skedjo is modern scheduling software which spares you the confusion and stress which can arise from creating a schedule using past time tools like: the good old pen and paper or excel sheets etc. </p>
                        </div>				  

                        <!-- /.header button -->
                    </div> 

                    <!-- /.signup form -->
                    <div class="col-md-5 jumbotron jumbotron-edit">

                        <div class="signup-header wow fadeInUp">
                            <h3 class="form-title text-center">LOGIN <span class="glyphicon glyphicon-user"></span></h3>
                            <p class="msgError">${errorLogin}</p>
                            <form class="form-header" action="login.jsp" role="form" method="POST" id="#">
                                <input class="form-group form-control input-md" name="user" type="email" placeholder="Username" required>
                                <input class="form-group form-control input-md" name="pass" type="password" placeholder="Password" required>
                                <input type="submit" class="form-group last btn btn-primary btn-block btn-md" value="Login">
                                <p class="privacy text-center">Do not have a account contact your admin to create one for you or if you want to create a company click here 
                                    <a data-toggle="modal" href="#myModal1">Create account</a>

                                <p class="msg">${message}</p>
                            </form>
                        </div>				
                    </div>
                </div>
            </div>
        </section>
        <!-- Modal -->

        <section id="features" class="features-section">
            <div class="container">
                <div class="row">
                    <span class="col-lg-12"><h1>Features</h1></span>
                    <div class="col-lg-3 col-md-6 col-xs-12">
                        <h1>Staff allocation</h1>
                        <center>
                            <figure>
                                <img src="icons/fab1.png" width="80" height="80">
                            </figure>
                        </center>
                        <p>
                            Allocation of your staff using a calendar based  approach and be able to keep with their working days
                        </p>
                    </div>
                    <div class="col-lg-3 col-md-6 col-xs-12">
                        <h1>Timestamp</h1>
                        <center>
                            <figure>
                                <img src="icons/fab2.png" width="80" height="80">    
                            </figure>
                        </center>
                        <p>
                            This section will allow you to view everyone working hours to  
                        </p>
                    </div>
                    <div class="col-lg-3 col-md-6 col-xs-12">
                        <h1>Management</h1>
                        <center>
                            <figure>
                                <img src="icons/fab3.png" width="80" height="80">    
                            </figure>
                        </center>
                        <p>
                            Overall report of your staff working days and working hours in a month or year, resigned or fired to make the management of your staff easy
                        </p>
                        <a href="#" class="">Learn more</a>
                    </div>
                    <div class="col-lg-3 col-md-6 col-xs-12">
                        <h1>Synchronization</h1>
                        <center>
                            <figure>
                                <img src="icons/fab4.png" width="80" height="80">    
                            </figure>
                        </center>
                        <p>
                            The calendar created will be able to be synchronized with various calendar platforms
                        </p>
                    </div>
                </div>
            </div>
        </section>
        <section id="about" class="about-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h1>About</h1>
                        <p>
                            <span class="">
                                In this ever growing world, shifting between daily activities is becoming a problem, planning for later tasks and recalling you forgot to accomplish the first task you were working on, or planning the schedule of your staff is becoming wearisome and confusing, well that is a sign that an assistance is needed. And the proposed system is there to assist you. Why complicate life any further? If pen and paper or Excel are still your scheduling methods of choice, you are losing a lot of precious time.
                            </span>
                        </p>
                    </div>
                </div>
            </div>
        </section>
        <section id="contact" class="contact-section">
            <div class="container" id="contact">
                <div class="row">
                    <h1>Contact Us</h1>
                    <br/><br/>
                    <div class="col-lg-6 col-md-4 col-xs-12">
                        <ul class="whatever2">
                            <b><span class="get">Get</span> in touch</b>
                            <li><img src="icons/location-pointer.png" height="23" width="23">  Gasabo, kimironko Kg 62st</li>
                            <li><img src="icons/phone-call.png" height="23" width="23">  +250 786 155 871</li>
                            <li><img src="icons/message.png" height="27" width="27">  nkakamanzi.fab@support.org</li>
                        </ul>
                        <br/><br/><br/><br/><br/>

                    </div>
                    <div class="col-lg-6 col-md-4 col-xs-12">
                        <span class="blendtoo">
                            <form class="form-header" role="form" method="POST">
                                <div class="form-group">
                                    <input type="text" name="ctname" class="form-control input-md" placeholder="Your name" required />
                                </div>
                                <div class="form-group">
                                    <input type="email" name="ctnmail" class="form-control input-md" placeholder="Your Email" required />
                                </div>
                                <div class="form-group">
                                    <textarea cols="5" name="ctnmsg" class="form-control input-md" placeholder="Your feedback" required>
                                    
                                    </textarea>
                                </div>
                                <div class="form-group last">
                                    <input type="submit" name="ctnsend" class="btn btn-primary btn-block btn-md" value="SEND" />
                                </div>

                            </form>

                        </span>
                    </div>
                </div> 

            </div>
        </section>    
        <div id="footer" class="container">
            <div class="row">
                <figure class="whatever">

                    <img src="icons/fb.png" height="30" width="30">
                    <img src="icons/yt.png" height="30" width="30">
                    <img src="icons/tw.png" height="30" width="30">
                    <img src="icons/lin.png" height="30" width="30">
                </figure>
                Copyright skedjo 2016
            </div>
        </div>
        <!-- Modal1 -->
        <form class="form-header" action="register.jsp" role="form" method="GET" id="#">
            <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h2 class="modal-title" id="myModalLabel">skedjo</h2>
                            <h5 class="modal-title">Choose your username, password and<br>give your company a name</h5>
                        </div>
                        <div class="modal-body">
                            <input class="form-group form-control input-md" type="text" placeholder="Full names" name="fname" required>
                            <input class="form-group form-control input-md" type="email" placeholder="Email" name="email" required>
                            <input class="form-group form-control input-md" type="password" placeholder="password" name="pswd" required>
                            <input class="form-group form-control input-md" type="text" placeholder="Company name" name="cname" required>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default btn-next">Continue</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Modal2 -->
            <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h2 class="modal-title" id="myModalLabel">skedjo</h2>
                            <h5 class="modal-title">Enter some basic information about<br>your company to start putting together your<br>first schedule right away</h5>
                        </div>
                        <div class="modal-body">
                            <select class="form-group form-control input-md" name="industry" required>
                                <option hidden>Please select --- Industry</option>
                                <option>Accomodation</option>
                                <option>Agriculture/Forestry</option>
                                <option>Arts, Entertainment & Recreation</option>
                                <option>Automotive</option>
                                <option>Call centre</option> 
                                <option>Construction/Contractors</option>
                                <option>Consultant</option>
                                <option>Education</option>
                                <option>Emergency Services</option>
                                <option>Finance & Insurance</option>
                                <option>Food & Beverage</option>
                                <option>Government/Public Administration</option>
                                <option>Healthcare & Emergency</option>
                                <option>Home Improvement Services</option>
                                <option>Hospitality</option>
                                <option>Information Technology</option>
                                <option>Manufacturing</option>
                                <option>Media</option>
                                <option>Mining, Oil & Gas</option>
                                <option>Non-profit/Charity/Volunteers</option>
                                <option>Police Department</option>
                                <option>Restaurant/Food services</option>
                                <option>Retail</option>
                                <option>Security Services</option>
                                <option>Software</option>
                                <option>Telecommunications</option>
                                <option>Transportation/Logistics</option>
                                <option>Utilities</option>
                                <option>Wholesaler</option>
                                <option>Other</option>
                            </select>
                            <input class="form-group form-control input-md" id="ph" type="text" placeholder="+Phone number" name="phone" required>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default btn-prev">Back</button>
                            <button type="button" class="btn btn-default btn-next">Continue</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Modal3 -->
            <div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">  
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h2 class="modal-title" id="myModalLabel">skedjo</h2>
                            <h5 class="modal-title">Setup positions, define what position types work at your company<br>like cashier, manager, driver.etc.<br>Press add more positions<br>after each position to continue adding more</h5>
                        </div>
                        <div class="modal-body">

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
                            </section>
                            </br>
                            <button type="button" id="additional-files">Add more positions</button>

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default btn-prev">Back</button>
                            <input class="btn btn-primary btn-default btn-md" type="submit" value="Register">
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/custom.js"></script>
        <script src="js/jquery.js"></script>
        <script src="js/ekko-lightbox-min.js"></script>
        <script src="js/npm.js"></script>
        <script src="js/jquery.sticky.js"></script>
        <script src="js/wow.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>

        <script>
            new WOW().init();
        </script>
        <script src="js/bootstrap.js"></script>
        <script src="js/scrolling-nav.js"></script>
        <script src="js/jquery.easing.min.js"></script>
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
        <script type="text/javascript">
            $("div[id^='myModal']").each(function () {

                var currentModal = $(this);

                //click next
                currentModal.find('.btn-next').click(function () {
                    currentModal.modal('hide');
                    currentModal.closest("div[id^='myModal']").nextAll("div[id^='myModal']").first().modal('show');
                });

                //click prev
                currentModal.find('.btn-prev').click(function () {
                    currentModal.modal('hide');
                    currentModal.closest("div[id^='myModal']").prevAll("div[id^='myModal']").first().modal('show');
                });

            });
        </script>
    </body>
</html>