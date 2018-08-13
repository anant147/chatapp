

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
							<span class="intro-text-small">Chat with your friends,</span>
							<h1><%
            String name=request.getParameter("name");
            %>
                                                        <%=name%></h1>	
						</div>
						
					</div>
					
				</div>
			</div>
		</div>
	</header>
	
	
	
	

	<div class="gtco-section">
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">
					<h2>Friends</h2>
				
				</div>
			</div>
			
                                    
                                    <%
                    ConnectionClass c5=new ConnectionClass();
                                        c5.conClass();
                                        PreparedStatement s5=null;
                                        ResultSet r5=null;
                                        String qry5="select member2 from friend where member1=? and value=?";
                                        
                                        s5=c5.con.prepareStatement(qry5);
                                        s5.setString(1,name);
                                        int value3=3;
                                        s5.setInt(2,value3);
                                        
                                        r5=s5.executeQuery();
                                        int c=0;
                                        int k=0;
                                        int r,x,y;
                                        int o=-1;
                                       
                                      
                                        while(r5.next())
                                        {
                                         String name1=r5.getString("member2");   
                                         
                                         r=c/4;
                                         
                                        if(r!=o)
                                        {
                                        o=r;
                                        %>
                                        <div class="row"></div>
                                        <%
                                        }

                                         c++;
                                      
                                          %>  
                                          
                                              <div class="col-md-3 col-sm-6">
                                                  <h2><a href="profilefriend.jsp?name=<%=name1%>"><%=name1%></a></h2>
                                                  <p><a href="messagefriend.jsp?name=<%=name%>&&name1=<%=name1%>">Message</a></p>
                                              </div>
                                         
                                          <%
                                         
                                        
                                        
                                            
                                        }
                                        
                                         if(c==0)
                                         {
                           %>
                           <div class="row">
                               <p><h1>You have no friends till now</h1></p>
                           </div>
                           <%
                                          }
                    %>
		</div>
	</div>

	

	
	<div id="gtco-subscribe">
		<div class="gtco-container">
			
			
		</div>
	</div>

	<footer id="gtco-footer" role="contentinfo">
		<div class="gtco-container">
			<div class="row row-p	b-md">

				<div class="col-md-4">
					<div class="gtco-widget">
						<h3>About <span class="footer-logo">ChatApp<span>.<span></span></h3>
						<p>It connect people acrocss the globe and help them to comunicate with each other.</p>
					</div>
				</div>

				<div class="col-md-4 col-md-push-1">
					<div class="gtco-widget">
						
					</div>
				</div>

				<div class="col-md-4">
					<div class="gtco-widget">
						
					</div>
				</div>

			</div>

			

		</div>
	</footer>
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



