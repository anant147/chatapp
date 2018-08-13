<%-- 
    Document   : group_addm
    Created on : 6 Jun, 2018, 11:42:09 AM
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
				
			</div>
                    
			
		</div>
            
	</nav>
	
	<header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url(images/img_2.jpg)">
		<div class="overlay"></div>
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12 col-md-offset-0 text-left">
					

					<div class="row row-mt-15em">

						<div class="col-md-7 mt-text animate-box" data-animate-effect="fadeInUp">
                                                    <%
                                                    
                                                    String name=(String)session.getAttribute("name");
                                                    String groupname=(String)session.getAttribute("groupname");
                                                    String objective=(String)session.getAttribute("objective");
                                                    %>
							<span class="intro-text-small">Welcome to <%=objective%> group,<%=groupname%></span>
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
  <button class="tablinks" onclick="openActivity(event, 'Add Members')" id="defaultOpen">Add group members</button>
  <button class="tablinks" onclick="openActivity(event, 'Sent Group Requests')">Sent Group Requests</button>
  <button class="tablinks" onclick="openActivity(event, 'Received Group Requests')">Received Group Requests</button>
  <button class="tablinks" onclick="openActivity(event, 'Remove')">Remove</button>
</div>

<div id="Add Members" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  
  <div class="gtco-section">
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">
					<h2> Add group members</h2>
					<p></p>
				</div>
			</div>
                        <%
                        String name1=(String)session.getAttribute("name");
                                                    String groupname1=(String)session.getAttribute("groupname");
                                                    String objective1=(String)session.getAttribute("objective");    
                        ConnectionClass ca=new ConnectionClass();
                        ca.conClass();
                        PreparedStatement sa1=null;
                        PreparedStatement sa2=null;
                        ResultSet ra1=null;
                        ResultSet ra2=null;
                        String qa1="select name from user";
                        sa1=ca.con.prepareStatement(qa1);
                        ra1=sa1.executeQuery();
                        
                        int cta=0;
                        int ra=0;
                        int oa=-1;
                        
                        while(ra1.next())
                        {
                        String nm1=ra1.getString("name");
                        String qy2="select value from groups where groupname=? and name=?";
                        sa2=ca.con.prepareStatement(qy2);
                        sa2.setString(1,groupname1);
                        sa2.setString(2,nm1);
                        ra2=sa2.executeQuery();
                        
                        int u=0;
                        int v=0;
                        while(ra2.next())
                        {
                        v++;    
                        int val=ra2.getInt("value");
                        
                        if(val>=1 ||val<=8)
                        {
                        u=1;
                        break;
                        }
                        }
                        
                       
                        if(u==0 && v==0)
                        {
                        ra=cta/4;
                        cta++;
                        if(ra!=oa)
                        {
                        oa=ra;
                        %>
                        <div class="row"></div>
                        <%
                        }
%>
                        <div class="col-md-3 col-sm-6" border="solid 1px black">
                            <h3><%=nm1%></h3>
                            
                            
                                     <p><a href="GroupServlet?type=2&&kind=1&&name=<%=nm1%>&&groupname=<%=groupname%>&&objective=<%=objective%>&&sender=<%=name1%>">Send Group Request</a></p>
                        </div>
<%
                        }
                        }
                        

                        if(cta==0)
                        {
                         %>
                         <div class="row">
                                  <div class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">
                                  <h1><p>There is no new member suggestions</p></h1>
                                  </div>
                              </div>
                         <%
                         }
                        %>
			
		</div>
	</div>
</div>

<div id="Sent Group Requests" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <div class="gtco-section">
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">
					<h2>Sent Group Requests</h2>
					<p></p>
				</div>
			</div>
                         <%
                         ConnectionClass cb=new ConnectionClass();
                         cb.conClass();
                         PreparedStatement sb=null;
                         ResultSet rb=null;
                         String qry="select name from groups where groupname=? and value=?";
                         sb=cb.con.prepareStatement(qry);
                         int val=3;
                         sb.setString(1,groupname);
                         sb.setInt(2, val);
                         
                         rb=sb.executeQuery();
                         int ctb=0;
                         int rbb=0;
                         int ob=-1;
                         
                          while(rb.next())
                          {
                          rbb=ctb/4;
                          ctb++;
                           String nm1=rb.getString("name");
                          if(rbb!=ob)
                          {
                         
                          ob=rbb;
                          %>
                          <div class="row"></div>
                          <%
                          }
                        %>
                            <div class="col-md-3 col-sm-6">
                               <h3><%=nm1%></h3>
                            
                            
                               <p><a href="GroupServlet?type=7&&name=<%=name%>&&objective=<%=objective%>&&groupname=<%=groupname%>&&name1=<%=nm1%>">Delete</a></p>
</div>
                            <%
                          }

                          if(ctb==0)
                            {       
                            %>
                            <div class="row">
                                  <div class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">
                                  <h1><p>You have not sent any membership requests</p></h1>
                                  </div>
                              </div>
                            <%
                           }
                         %>
			
		</div>
	</div> 
</div>

<div id="Received Group Requests" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <div class="gtco-section">
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">
					<h2>Received Group Requests </h2>
					<p></p>
				</div>
			</div>
                        <%
                        ConnectionClass cc=new ConnectionClass();
                        cc.conClass();
                        PreparedStatement sc=null;
                        ResultSet rc=null;
                        
                        String qyc="select name from groups where groupname=? and value=?";
                        sc=cc.con.prepareStatement(qyc);
                        int valc=4;
                        sc.setString(1,groupname);
                        sc.setInt(2,valc);
                        
                        rc=sc.executeQuery();
                        int ctc=0;
                        int rbc=0;
                        int oc=-1;
                        
                        while(rc.next())
                        {
                        rbc=ctc/4;
                        ctc++;
                        String nm1=rc.getString("name");
                        
                        if(rbc!=oc)
                        {
                        oc=rbc;
                        %>
                        <div class="row"></div>
                        <%
                        }
%>
                        <div class="col-md-3 col-sm-6">
					<h3><%=nm1%></h3>
                                        <p><a href="GroupServlet?type=5&&kind=1&&name=<%=name%>&&groupname=<%=groupname%>&&name1=<%=nm1%>&&objective=<%=objective%>">Approve</a></p>
                                        <p><a href="GroupServlet?type=7&&name=<%=name%>&&objective=<%=objective%>&&groupname=<%=groupname%>&&name1=<%=nm1%>">Delete</a></p>
				</div>
                        <%
                        }
                        
                        if(ctc==0)
                        {
                         %>
                         <div class="row">
                                  <div class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">
                                  <h1><p>You have not received any membership requests</p></h1>
                                  </div>
                              </div>
                          <%

                         }
                        %>
			
		</div>
	</div>

</div>
	
	<div id="Remove" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <div class="gtco-section">
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">
					<h2> Members of group</h2>
					<p></p>
				</div>
			</div>
                        <%
                        ConnectionClass cr=new ConnectionClass();
                        cr.conClass();
                        PreparedStatement sr=null;
                        ResultSet rr=null;
                        String qr="select name from groups where groupname=? and value=?";
                        sr=cr.con.prepareStatement(qr);
                        sr.setString(1,groupname);
                        sr.setInt(2, 2);
                        
                        rr=sr.executeQuery();
                        
                        int cntr=0;
                        int or=-1;
                        int rf=0;
                        
                        while(rr.next())
                        {
                        rf=cntr/4;
                        cntr++;
                        
                        if(rf!=or)
                        {
                        or=rf;
                        %>
                        <div class="row"></div>
                        <%
                        }
                        String nm1=rr.getString("name");
                         %>
                         <div class="col-md-3 col-sm-6">
                             <h3><%=nm1%></h3>
                             <p><a href="GroupServlet?type=7&&name=<%=name%>&&objective=<%=objective%>&&groupname=<%=groupname%>&&name1=<%=nm1%>">Remove</a></p>
                         </div>
                        <%
                        }
                         if(cntr==0)
                         {
                             %>
                             <div class="row">
				<div class="col-md-8 col-md-offset-2">
					<h2>There is no member in the group</h2>
				</div>
			</div>
                             <%
                             
                         }
                        %>
			
		</div>
	</div>

</div>

	<div id="gtco-subscribe">
		
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



