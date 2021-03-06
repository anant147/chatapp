<%-- 
    Document   : forgetpassword
    Created on : 25 Jun, 2018, 4:53:10 PM
    Author     : MY ACER
--%>


<%@page import="java.sql.*"%>
<%@page import="controller.ConnectionClass"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>ChatApp</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Website Template by FreeHTML5.co" />
	<meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
	<meta name="author" content="FreeHTML5.co" />
	
	<!-- 
	//////////////////////////////////////////////////////

	FREE HTML5 TEMPLATE 
	DESIGNED & DEVELOPED by FREEHTML5.CO
		
	Website: 		http://freehtml5.co/
	Email: 			info@freehtml5.co
	Twitter: 		http://twitter.com/fh5co
	Facebook: 		https://www.facebook.com/fh5co

	//////////////////////////////////////////////////////
	 -->

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Themify Icons-->
	<link rel="stylesheet" href="css/themify-icons.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">

	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

     <style>
         .abc{
             
             width:600px;
             
         }
</style>
	</head>
        <body>
            
        
		
	<div class="gtco-loader"></div>
	
	<div id="page">

	
	<div class="page-inner">
	<nav class="gtco-nav" role="navigation">
		<div class="gtco-container">
			
			<div class="row">
				<div class="col-sm-4 col-xs-12">
					<div id="gtco-logo">ChatApp <em>.</em></div>
				</div>
				<div class="col-xs-8 text-right menu-1">
					
				</div>
			</div>
			
		</div>
	</nav>
	
            <script>
                function validateform1()
                {
                    var name=document.form1.name;
                    var email=document.form1.email;
                    var mobile=document.form1.mobile;
                    var username=document.form1.username;
                    
                    if (name.value==null || name.value=="")
                    {  
                     alert("Name can't be blank");  
                      return false;  
                     }
                     
                     if (email.value==null || email.value=="")
                    {  
                     alert("email can't be blank");  
                      return false;  
                     }
                     
                     	if (email.value.indexOf("@", 0) < 0)			 
	{
		window.alert("Please enter a valid e-mail address.");
		email.focus();
		return false;
	}

	if (email.value.indexOf(".", 0) < 0)			 
	{
		window.alert("Please enter a valid e-mail address.");
		email.focus();
		return false;
	}
        
        if (mobile.value == ""||mbile.value==null)						 
	{
		window.alert("Please enter your mobile no.");
		mobile.focus();
		return false;
	}
        
        if (username.value == ""||username.value==null)						 
	{
		window.alert("Please enter your username");
		username.focus();
		return false;
	}
                }
                
            </script>
            
	<header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url(images/img_6.jpg)">
		<div class="overlay"></div>
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12 col-md-offset-0 text-left">
					<div class="row row-mt-15em">

						<div class="col-md-7 mt-text animate-box" data-animate-effect="fadeInUp">
							<span class="intro-text-small">WELCOME TO CHATAPP</span>
                                                        
							<h1>Connect and chat with your friends</h1>	
						</div>
						
					</div>
					
				</div>
			</div>
		</div>
	</header>
            
         
	
        <div id="gtco-features" class="border-bottom">
		<div class="gtco-container">
                    <div class="row">
                    <br/>
                    <h2>Enter the following information to change your password :</h2>
                    <br/>
                    
                    <div class="abc">
                        
                        <form name="form1" method="post"  action="passwordforget?type=1" onsubmit="return validateform1()">
                            <br/>
                                                                                                        <div class="row form-group">
                                                                                                             <div class="col-md-12">
                                                                                                                    <label for="name">Name : </label>
                                                                                                                    
                                                                                                                   <input type="text" class="form-control" id="name" name="name">
                                                                                                            </div></div>
                                                                                                        
                                                                                                        <div class="row form-group">
                                                                                                             <div class="col-md-12">
                                                                                                                    <label for="email"> Email : </label>
                                                                                                                    
                                                                                                                    <input type="text" class="form-control" id="email" name="email">
                                                                                                            </div>

                                                                                                            <div class="col-md-12">
                                                                                                                    <label for="mobile">Mobile  : </label>
                                                                                                                    
                                                                                                                    <input type="text" class="form-control" id="mobile" name="mobile">
                                                                                                            </div>
                                                                                                    </div>
                        							                    <div class="row form-group">
													<div class="col-md-12">
														<label for="username">Username : </label>
														<input type="text" class="form-control" id="username" name="username">
													</div>
												</div>

												<div class="row form-group">
													<div class="col-md-12">
														<input type="submit" class="btn btn-primary" value="Submit">
													</div>
												</div>
											</form>	
</div>                    </div>
                    </div>
            </div>
	
	

	
	<div id="gtco-subscribe">
		<div class="gtco-container">
			
			
		</div>
	</div>

	
	</div>

	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>
	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- countTo -->
	<script src="js/jquery.countTo.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	<!-- Main -->
	<script src="js/main.js"></script>

	</body>
</html>


