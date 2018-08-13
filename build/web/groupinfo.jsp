
<%@page import="java.sql.*"%>
<%@page import="controller.ConnectionClass"%>
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

	<style>

div.ex3 {
    background-color: yellow;
    width: 210px;
    height: 110px;
    overflow: auto;
}
</style>

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
					<div id="gtco-logo">ChatApp<em>.</em></div>
				</div>
				
			</div>
			
		</div>
	</nav>
	
	<header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url(images/img_1.jpg)">
		<div class="overlay"></div>
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12 col-md-offset-0 text-left">
					

					<div class="row row-mt-15em">

						<div class="col-md-7 mt-text animate-box" data-animate-effect="fadeInUp">
                                                    <%
                                                    String name=(String)session.getAttribute("name");
                                                    String objective=(String)session.getAttribute("objective");
                                                    String groupname=(String)session.getAttribute("groupname");
                                                    %>
							<span class="intro-text-small">Welcome to <%=objective%> group, <%=groupname%></span>
							<h1><%=name%></h1>	
						</div>
						
					</div>
							
					
				</div>
			</div>
		</div>
	</header>
	
	
	
	
			

	<div class="gtco-section border-bottom">
		<div class="gtco-container">
			
                        <%
                        ConnectionClass c1=new ConnectionClass();
                        c1.conClass();
                        PreparedStatement st1=null;
                        ResultSet rs1=null;
                        String qry="select name from groups where groupname=? and value=?";
                        st1=c1.con.prepareStatement(qry);
                        st1.setString(1,groupname);
                        st1.setInt(2,1);
                        
                        rs1=st1.executeQuery();
                        
                        while(rs1.next())
                        {
                        String name1=rs1.getString("name");
                        %>
                        <div class="row">
                            <div class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">
                                <h1><%=groupname%> - <%=objective%> group</h1>
                                <p1><%=name1%> is this admin of this group</p>
                            </div>
		
			</div>
                        <%
                        }
                        %>
                        
                        <%
                        ConnectionClass c2=new ConnectionClass();
                        c2.conClass();
                        PreparedStatement st2=null;
                        ResultSet rs2=null;
                        
                        String qy="select name from groups where groupname=? and value=?";
                        st2=c2.con.prepareStatement(qy);
                        
                        st2.setString(1, groupname);
                        st2.setInt(2,2);
                        
                        rs2=st2.executeQuery();
                        
                        int cnt=0;
                        int r=0;
                        int o=-1;
                        
                        while(rs2.next())
                        {
                         r=cnt/4;
                         cnt++;
                         
                         if(r!=o)
                         {
                         o=r;
                         %>
                         <div class="row"></div>
                         <%
                         }

                         String name2=rs2.getString("name");

                        %>
                        <div class="col-md-3 col-sm-6">
                            <h3><a href="profilefriend.jsp?name=<%=name2%>"><%=name2%></a><h3>
                        </div>
                        <%
                        }

                        if(cnt==0)
                        {
                        %>
                        <div class="row">
                            <div class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">
                                There is no member in this group.
                            </div>
                        </div>
                         <%
                         }
                        %>
			
		</div>
	</div>

	

	<div id="gtco-subscribe">
		<div class="gtco-container">
			
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2">
					
				</div>
			</div>
		</div>
	</div>

	<footer id="gtco-footer" role="contentinfo">
		<div class="gtco-container">
			<div class="row row-p	b-md">

				<div class="col-md-4">
					<div class="gtco-widget">
						<h3>About <span class="footer-logo">ChatApp<span>.<span></span></h3>
						<p>It connect people across the globe and help them to communicate with each other</p>
					</div>
				</div>

				<div class="col-md-4 col-md-push-1">
					<div class="gtco-widget">
						<h3>Links</h3>
						<ul class="gtco-footer-links">
							<li><a href="#">Knowledge Base</a></li>
							<li><a href="#">Career</a></li>
							<li><a href="#">Press</a></li>
							<li><a href="#">Terms of services</a></li>
							<li><a href="#">Privacy Policy</a></li>
						</ul>
					</div>
				</div>

				<div class="col-md-4">
					<div class="gtco-widget">
						<h3>Get In Touch</h3>
						<ul class="gtco-quick-contact">
							<li><a href="#"><i class="icon-phone"></i> +1 234 567 890</a></li>
							<li><a href="#"><i class="icon-mail2"></i> info@FreeHTML5.co</a></li>
							<li><a href="#"><i class="icon-chat"></i> Live Chat</a></li>
						</ul>
					</div>
				</div>

			</div>

			

		</div>
	</footer>
	
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

