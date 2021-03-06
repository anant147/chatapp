<%-- 
    Document   : Change_Setting
    Created on : 21 Jun, 2018, 10:24:46 AM
    Author     : MY ACER
--%>

<%-- 
    Document   : feedform
    Created on : 18 Jun, 2018, 5:55:25 PM
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
         
         .dropbtn {
    background-color: #3498DB;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
}

.dropbtn:hover, .dropbtn:focus {
    background-color: #2980B9;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f1f1f1;
    min-width: 160px;
    overflow: auto;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown a:hover {background-color: #ddd}
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
	
	<header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url(images/img_6.jpg)">
		<div class="overlay"></div>
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12 col-md-offset-0 text-left">
					<div class="row row-mt-15em">

						<div class="col-md-7 mt-text animate-box" data-animate-effect="fadeInUp">
							<span class="intro-text-small">Hello,</span>
                                                        <%
                                                        String name=(String)session.getAttribute("name");
                                                        %>
							<h1><%=name%></h1>	
						</div>
						
					</div>
					
				</div>
			</div>
		</div>
	</header>
        
        
                                      
	
        <div id="gtco-features" class="border-bottom">
		<div class="gtco-container">
                    <div class="row">
                    
                    <%
                    ConnectionClass c=new ConnectionClass();
                    c.conClass();
                    PreparedStatement st=null;
                    ResultSet rs=null;
                    String qry="select password,username,mobile from user where name=?";
                    st=c.con.prepareStatement(qry);
                    st.setString(1,name);
                    rs=st.executeQuery();
                    while(rs.next())
                    {
                    %>
                    <div class="abc">
                        
                        <form method="post"  action="settingservlet?type=1&&name=<%=name%>" >
                                                                                                    <div class="row form-group">
                                                                                                             

                                                                                                            <div class="col-md-12">
                                                                                                                    <label for="Password">Password : </label>
                                                                                                                    
                                                                                                                    <input type="text" class="form-control" id="feed" name="password" value="<%=rs.getString("password")%>">
                                                                                                            </div>
                                                                                                    </div>
                        							                    
                                                                                                    <div class="row form-group">
                                                                                                             

                                                                                                            <div class="col-md-12">
                                                                                                                    <label for="Mobile"> Mobile : </label>
                                                                                                                    
                                                                                                                    <input type="text" class="form-control" id="feed" name="mobile" value="<%=rs.getString("mobile")%>" >
                                                                                                            </div>
                                                                                                    </div>
                                                                                                    
                                                                                                    <div class="row form-group">
                                                                                                             

                                                                                                            <div class="col-md-12">
                                                                                                                    <label for="username"> Username : </label>
                                                                                                                    
                                                                                                                    <input type="text" class="form-control" id="feed" name="username" value="<%=rs.getString("username")%>">
                                                                                                            </div>
                                                                                                    </div>

												<div class="row form-group">
													<div class="col-md-12">
														<input type="submit" class="btn btn-primary" value="Change">
													</div>
												</div>
											</form>	
</div>           
                    <%}%>
                    </div>
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


