
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

	<style>
            
            .div3
            {
                background-color:greenyellow;
               
                width:350px;
                float:left;
                
                
            }
            
            .div4
            {
                background-color:lightblue;
               
                width:350px;
                float:right;
            }
            
            .xt
            {
                background-color:lavender;
                width:300px;
                height:100px;
            }
            
            .yt
            {
                background-color:lavender;
                width:530px;
               
            }

div.ex4 {
    background-color: grey;
    width: 300px;
    height: 710px;
    overflow: auto;
}

div.ex3 {
    background-color: grey;
    width: 500px;
    height: 710px;
    overflow: auto;
}

div.ex1 {
    background-color: grey;
    width: 500px;
    height: 10px;
    overflow: auto;
}

div.ex2 {
    background-color: grey;
    width: 530px;
    height: 710px;
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
            String name=request.getParameter("name");
            String name1=request.getParameter("name1");
            %>
							<span class="intro-text-small"><%=name%> , Chat with </span>
                                                        
							<h1><%=name1%></h1>	
						</div>
						
					</div>
							
					
				</div>
			</div>
		</div>
	</header>
	
	
	
	<div class="gtco-section border-bottom">
		<div class="gtco-container">
			
			

	<div class="gtco-section border-bottom">
		<div class="gtco-container">
			

			<div class="row">
				<div class="col-md-6">
					<br/><br/>
                                    <center><h1>Friends</h1></center>
                                    
                                            <center><div class="ex4">
                                           
                                           <%
                                               String nm=request.getParameter("name");
                                        ConnectionClass c5=new ConnectionClass();
                                        c5.conClass();
                                        PreparedStatement s5=null;
                                        ResultSet r5=null;
                                        String qry5="select member2 from friend where member1=? and value=?";
                                        
                                        s5=c5.con.prepareStatement(qry5);
                                        s5.setString(1,nm);
                                        int value3=3;
                                        s5.setInt(2,value3);
                                        
                                        r5=s5.executeQuery();
                                        
                                        while(r5.next())
                                        {
                                        String name2=r5.getString("member2");
                                        
                                        %>
					<div class="xt">
						<li class="animate-box">
							<h2><p><center><a href="messagefriend.jsp?name=<%=nm%>&&name1=<%=name2%>"><%=name2%></a>
                                   </p></center></h2>
							
						</li>
                                                </div>
						
					
                                    <%
                                        }
                                        %>
                                          
                                        </div></center>
				</div>
				<div class="col-md-6 mt-sm">
					
	
                                    <div class="ex2">
                                        <center>
                                    <div class="ex3">
                                        <%
                        ConnectionClass c1=new ConnectionClass();
                        c1.conClass();
                        PreparedStatement st1=null;
                        ResultSet rs1=null;
                        String qry1="select sender,date,message from frmessage where sender=? and receiver=? or sender=? and receiver=?";
                        
                        st1=c1.con.prepareStatement(qry1);
                        st1.setString(1,name);
                        st1.setString(2,name1);
                        st1.setString(3,name1);
                        st1.setString(4,name);
                        
                       
                        
                        rs1=st1.executeQuery();
                        
                        while(rs1.next())
                        {
                         if(name.equals(rs1.getString("sender"))){   
                        %>
                        <br/>
                        <div class="div3">
                            <p><b><%=rs1.getString("sender")%></b></p>
                            <p><%=rs1.getString("message")%></p>
                            <p><%=rs1.getString("date")%></p>
                        </div>
                        <div class="ex1"></div>
                        
                        <%}
                            else {
                            %>
                            <br/>
                            <div class="div4">
                            <p><b><%=rs1.getString("sender")%></b></p>
                            <p><%=rs1.getString("message")%></p>
                            <p><%=rs1.getString("date")%></p>
                        </div>
                        <div class="ex1"></div>
                            <%
                                }
                        }
                        %>
                        </div>
                        </center>
                        </div>
                        
                        <div class="yt">
                            <form action="FrMessageServlet" method="post">
                            <input type="hidden" value="<%=name%>" name="sender">
                            <input type="hidden" value="<%=name1%>" name="receiver">
                            <br/>
                            <b><input type="textarea" name="message" size="50">  <input type="submit" value="Send" name="send">
                            <br/>
                        </form>
                        </div>
                        
         
                                    

				</div>
			</div>
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

