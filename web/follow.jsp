<%-- 
    Document   : follow
    Created on : 14 Jun, 2018, 6:35:11 PM
    Author     : MY ACER
--%>

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
body {font-family: Arial;}

/* Style the tab */
.tab {
    overflow: hidden;
    border: 1px solid #ccc;
    background-color: #f1f1f1;
}

/* Style the buttons inside the tab */
.tab button {
    background-color: inherit;
    float: left;
    border: none;
    outline: none;
    cursor: pointer;
    padding: 14px 16px;
    transition: 0.3s;
    font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
    background-color: #ddd;
}

/* Create an active/current tablink class */
.tab button.active {
    background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
    display: none;
    padding: 6px 12px;
    
    border-top: none;
}

/* Style the close button */
.topright {
    float: right;
    cursor: pointer;
    font-size: 28px;
}

.topright:hover {color: red;}
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
                                                    <%
                                                    String name=(String)session.getAttribute("name");
                                                    %>
							<span class="intro-text-small">Hello,</span>
							<h1><%=name%></h1>	
						</div>
						
					</div>
					
				</div>
			</div>
		</div>
	</header>
	
	<script>
function openActivity(evt,cityName ) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>
	
	

<div class="tab">
  <button class="tablinks" onclick="openActivity(event, 'Following')" id="defaultOpen">Following</button>
  <button class="tablinks" onclick="openActivity(event, 'Followers')">Followers</button>
  <button class="tablinks" onclick="openActivity(event, 'Follow Suggestions')">Follow Suggestions</button>
  
</div>

<div id="Following" class="tabcontent">
 
  
  <div class="gtco-section">
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">
					<h2> Following</h2>
					
				</div>
			</div>
                        <%
                        ConnectionClass cg=new ConnectionClass();
                        cg.conClass();
                        PreparedStatement sg=null;
                        ResultSet rg=null;
                        String qry="select member2 from follow where member1=? and value=?";
                        sg=cg.con.prepareStatement(qry);
                        sg.setString(1, name);
                        sg.setInt(2,1);
                        rg=sg.executeQuery();
                        
                        int cntg=0;
                        int rgc=0;
                        int ogc=-1;
                        
                        while(rg.next())
                        {
                        rgc=cntg/4;
                        cntg++;
                        
                        if(rgc!=ogc)
                        {
                        ogc=rgc;
                        %>
                        
                        <div class="row"></div>
                        
                        <%
                        }
                        String name1=rg.getString("member2");
                        %>
                        <div class="col-md-3 col-sm-6">
                            <h2><a href="profilefriend.jsp?name=<%=name1%>"><%=name1%></a></h2>
                            <p><a href="pagecontroller?type=9&&name=<%=name%>&&name1=<%=name1%>">Message</a></p>
                            <p><a href="followservlet?type=2&&member1=<%=name%>&&member2=<%=name1%>">Unfollow</a></p>
                        </div>
                        <%
                        }
                        
                       if(cntg==0)
                         {
                         %>
                         <div class="row">
				<div class="col-md-8 col-md-offset-2">
					<h1><center>You are not following any one.</center></h1>
				</div>
			</div>
                        <%
}
                        %>
			
		</div>
	</div>
</div>

<div id="Followers" class="tabcontent">
  
  <div class="gtco-section">
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">
					<h2>Followers</h2>
				
				</div>
			</div>
                        <%
                        ConnectionClass co=new ConnectionClass();
                        co.conClass();
                        PreparedStatement sto=null;
                        ResultSet ro=null;
                        String qo="select member1 from follow where member2=?";
                        sto=co.con.prepareStatement(qo);
                        sto.setString(1,name);
                        
                        int cnto=0;
                        int rso=0;
                        int oso=-1;
                        
                        ro=sto.executeQuery();
                        
                        while(ro.next())
                        {
                        rso=cnto/4;
                        cnto++;
                        
                        if(rso!=oso)
                        {
                        oso=rso;
                        %>
                        <div class="row"></div>
                        <%
                        }
                         String name1=ro.getString("member1");
                        %>
                        
                        <div class="col-md-3 col-sm-6">
                            <h3><a href="profilefriend.jsp?name=<%=name1%>"><%=name1%></a></h3>
                            <p><a href="pagecontroller?type=9&&name=<%=name%>&&name1=<%=name1%>">Message</a></p>
                        </div>
                        <%
                        }
                       
                        if(cnto==0)
                        {%>
                        <div class="row">
				<div class="col-md-8 col-md-offset-2">
					<center><h1>You have no follower.</h1></center>
				</div>
			</div>
                        <%}
                        %>
			
		</div>
	</div> 
</div>

<div id="Follow Suggestions" class="tabcontent">
  
  <div class="gtco-section">
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">
					<h1>Follow Suggestions </h1>
					
				</div>
			</div>
                        <%
                        ConnectionClass cs=new ConnectionClass();
                        cs.conClass();
                        PreparedStatement ss1=null;
                        PreparedStatement ss2=null;
                        ResultSet rs1=null;
                        ResultSet rs2=null;
                        
                        String qs1="select member2 from friend where member1=? and value=?";
                        
                       ss1=cs.con.prepareStatement(qs1);
                       ss1.setString(1,name);
                       ss1.setInt(2,3);
                       
                       rs1=ss1.executeQuery();
                       int cnts=0;
                       int rsc=0;
                       int osc=-1;
                       
                       
                       while(rs1.next())
                       {
                       String name1=rs1.getString("member2");
                       
                       String qs2="select value from follow where member1=? and member2=?";
                       ss2=cs.con.prepareStatement(qs2);
                       ss2.setString(1,name);
                       ss2.setString(2, name1);
                       
                       rs2=ss2.executeQuery();
                       
                       int cr=0;
                       while(rs2.next())
                       {
                           cr++;
                       }
                       
                       if(cr==0)
                       {
                       rsc=cnts/4;
                       cnts++;
                       
                       if(rsc!=osc)
                       {
                       osc=rsc;
                       %>
                       <div class="row"></div>
                       <%
                       }

                       %>
                       <div class="col-md-3 col-sm-6">
                           <h2><%=name1%></h2>
                           <p><a href="followservlet?type=1&&member1=<%=name%>&&member2=<%=name1%>">Follow</a></p>
                           <br/>
                           
                       </div>
                       <%
                       
                       }
                       
                       
                       }

                      if(cnts==0)
                         {%>
                       <div class="row">
				<div class="col-md-8 col-md-offset-2">
					<h1>There is no follow suggestions</h1>
				</div>
			</div>
                       <%}
                        
                        %>
			
		</div>
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

