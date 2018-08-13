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
body {font-family: Arial;}

/* Style the tab */
.tab {
    overflow: hidden;
    border: 1px solid #ccc;
    background-color: #f1f1f1;
}

.iop
{
    border:solid 1px black;
    width:750px;
    align-content:center;
    float:none;
    padding-bottom:20px;
             padding-top:20px;
             margin:auto;
             padding-left: 20px;
             padding-right:20px;
}

.poi
{
    border:solid 1px black;
    width:750px;
    align-content:center;
    float:none;
    padding-bottom:20px;
             padding-top:20px;
             margin:auto;
             padding-left: 20px;
             padding-right:20px;
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
    border: 1px solid #ccc;
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
							<span class="intro-text-small">Connect with your friends,</span>
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
    <button class="tablinks" ><%
        session.setAttribute("name", name);
        %><a href="groupform.jsp">Make new group</a></button>
  <button class="tablinks" onclick="openActivity(event, 'Group')" id="defaultOpen">Group</button>
  <button class="tablinks" onclick="openActivity(event, 'Sent Group Requests')">Sent Group Requests</button>
  <button class="tablinks" onclick="openActivity(event, 'Received Group Requests')">Received Group Requests</button>
  <button class="tablinks" onclick="openActivity(event, 'Group Suggestions')">Group Suggestions</button>
</div>

<div id="Group" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  
  <div class="gtco-section">
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">
					<h2> Your Groups</h2>
					<p></p>
				</div>
			</div>
			<div class="row">
                            
                                 <%
                                 ConnectionClass c=new ConnectionClass();
                                 c.conClass();
                                 PreparedStatement st1=null;
                                 PreparedStatement st2=null;
                                 PreparedStatement st3=null;
                                 PreparedStatement st4=null;
                                 ResultSet r1=null;
                                 ResultSet r2=null;
                                 ResultSet r3=null;
                                 ResultSet r4=null;
                                 
                                 String qry1="";
                                 String qry2="";
                                 String qry3="";
                                 String qry4="";
                                 
                                 int val1=1;
                                 
                                 qry1="select groupname,objective from groups where name=? and value=?";
                                 st1=c.con.prepareStatement(qry1);
                                 st1.setString(1, name);
                                 st1.setInt(2,val1 );
                                 r1=st1.executeQuery();
                                 
                                 int cs1=0;
                                 
                                 while(r1.next())
                                 {
                                 cs1++;
                                 %>
                                 <div class="iop">
                                     <p>
                                     <h3><a href="pagecontroller?type=1&&name=<%=name%>&&groupname=<%=r1.getString("groupname")%>&&objective=<%=r1.getString("objective")%>"><%=r1.getString("groupname")%></a></h3>
                                     <span style="float:right;"><%=r1.getString("objective")%> group</span></p>
                                     <p>You are the admin of this group</p>
                                 </div>
                                
                                 <%
                                 
                                 }

                                  

                                  int cs2=0;
                                  qry2="select groupname,objective  from groups where name=? and value=?";
                                  st2=c.con.prepareStatement(qry2);
                                  
                                  int val2=2;
                                  st2.setString(1,name);
                                  st2.setInt(2,val2);
                                   
                                  r2=st2.executeQuery();
                                  
                                  while(r2.next())
                                   {
                                    
                                    qry3="select name from groups where value=? and groupname=?";
                                    st3=c.con.prepareStatement(qry3);
                                    int val3=1;

                                    st3.setInt(1, val3);
                                    st3.setString(2,r2.getString("groupname"));

                                    
                                    r3=st3.executeQuery();
                                   

                                    while(r3.next())
                                      {
                                      cs2++;
                                    String name1=r3.getString("name");
                                      %>
                                     
                                    <div class="poi">
                                        <p><h3>
                                      <a href="pagecontroller?type=1&&name=<%=name%>&&groupname=<%=r2.getString("groupname")%>&&objective=<%=r2.getString("objective")%>"><%=r2.getString("groupname")%></a>
                                       <span style="float:right"> <%=r2.getString("objective")%> group</span></p>
                                        <p><%=name1%> is the admin of the group</p>
                                        <a href="GroupServlet?type=6&&name=<%=name%>&&groupname=<%=r2.getString("groupname")%>&&objective=<%=r2.getString("objective")%>">Leave</a>
                                        
                                    </div>
                                    <hr/>
                                    <%
                                     }
                                    
                            
                                   }

                                  int cs3=cs1+cs2;

                                  if(cs3==0)
                                   {
                                     %>
                                    <div class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">
					<center>You are not member of any group.</center>
				</div>
                                     <%
                                   }
                                 
                                 %>
				
			</div>
		</div>
	</div>
</div>

<div id="Sent Group Requests" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <div class="gtco-section">
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">
					<h2>Sent Group Requests </h2>
					<p></p>
				</div>
			</div>
                    <div class="row">
                        <%
                        ConnectionClass cb=new ConnectionClass();
                        cb.conClass();
                        PreparedStatement sb1=null;
                        PreparedStatement sb2=null;
                        
                        ResultSet rb1=null;
                        ResultSet rb2=null;
                        
                        String qy1="select groupname,objective from groups where name=? and value=?";
                        sb1=cb.con.prepareStatement(qy1);
                        int v1=4;
                        sb1.setString(1,name);
                        sb1.setInt(2, v1);
                        
                        rb1=sb1.executeQuery();
                        
                        int cntb1=0;
                        
                        while(rb1.next())
                        {
                        String gpn=rb1.getString("groupname");
                        String obj=rb1.getString("objective");
                        cntb1++;
                        
                        String qy2="select name from groups where groupname=? and value=?";
                        sb2=cb.con.prepareStatement(qy2);
                        
                        int v2=1;
                        sb2.setString(1, gpn);
                        sb2.setInt(2, v2);
                        
                        rb2=sb2.executeQuery();
                        
                        while(rb2.next())
                        {
                        String name2=rb2.getString("name");
                        
                        
                        %>
                        <div class="poi">
                                        
                            <p><h3><a href="pagecontroller?type=2&&name=<%=name%>&&nadm=<%=name2%>&&groupname=<%=gpn%>&&objective=<%=obj%>"><%=gpn%></a></h3>
                                       <span style="float:right"> <%=obj%> group</span></p>
                                        <p><%=name2%> is the admin of the group</p>
                                      <a href="GroupServlet?type=6&&name=<%=name%>&&groupname=<%=gpn%>&&objective=<%=obj%>">Delete</a>
                                    </div>
                        <%
                            }
                        }

                        if(cntb1==0)
                        {
                        %>
                        <div class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">
					<center>You have not sent any request for membership in any group.</center>
				</div>
                        <%
                         }
                        %>
                        </div>
			<div class="row">
				<div class="col-md-8 col-md-offset-2">
					
				</div>
			</div>
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
                        PreparedStatement sc1=null;
                        PreparedStatement sc2=null;
                        ResultSet rc1=null;
                        ResultSet rc2=null;
                        
                        String qc1="select groupname,objective from groups where name=? and value=?";
                        sc1=cc.con.prepareStatement(qc1);
                        int vc1=3;
                        sc1.setString(1, name);
                        sc1.setInt(2, vc1);
                        
                        rc1=sc1.executeQuery();
                        
                        int cntc1=0;
                         
                        while(rc1.next())
                        {
                        String gpn=rc1.getString("groupname");
                        String obj=rc1.getString("objective");
                        cntc1++;
                        
                        String qc2="select name from groups where groupname=? and value=?";
                        int vc2=1;
                        sc2=cc.con.prepareStatement(qc2);
                        sc2.setString(1, gpn);
                        sc2.setInt(2, vc2);
                        
                        rc2=sc2.executeQuery();
                        
                        while(rc2.next())
                        {
                        String namc=rc2.getString("name");
                        %>
                        <div class="poi">
                                        
                            <p><h3><a href="pagecontroller?type=2&&name=<%=name%>&&nadm=<%=namc%>&&groupname=<%=gpn%>&&objective=<%=obj%>"><%=gpn%></a></h3>
                                       <span style="float:right"> <%=obj%> group</span></p>
                                        <p><%=namc%> is the admin of the group</p>
                                        
                                       <a href="GroupServlet?type=3&&kind=1&&name=<%=name%>&&groupname=<%=gpn%>&&objective=<%=obj%>&&nm2=<%=namc%>">Accept</a>
                                        
                                       <a href="GroupServlet?type=6&&name=<%=name%>&&groupname=<%=gpn%>&&objective=<%=obj%>">Delete</a>
                                    </div>
                        <%
                        }
                        }

                        if(cntc1==0)
                         {
                         %>
                        <div class="row">
				<div class="col-md-8 col-md-offset-2">
					<h3>You have not received any  request for membership in the group.</h3>
				</div>
			</div>
                    <%
                          }
                        %>
			
		</div>
	</div>

</div>
	
	<div id="Group Suggestions" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <div class="gtco-section">
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">
					<h2> Group Suggestions</h2>
					<p></p>
				</div>
			</div>
                    
                        <%
                        ConnectionClass cd=new ConnectionClass();
                        cd.conClass();
                        PreparedStatement sd1=null;
                        PreparedStatement sd2=null;
                        ResultSet rd1=null;
                        ResultSet rd2=null;
                        
                        String qd="select groupname,objective,name from groups where value=?";
                        sd1=cd.con.prepareStatement(qd);
                        sd1.setInt(1, 1);
                        rd1=sd1.executeQuery();
                        
                        int ctnd1=0;
                        
                        while(rd1.next())
                        {
                        String gpn=rd1.getString("groupname");
                        String obj=rd1.getString("objective");
                        String nmad=rd1.getString("name");
                        
                        String qd2="select groupname from groups where name=?";
                        sd2=cd.con.prepareStatement(qd2);
                        sd2.setString(1, name);
                        
                       
                        rd2=sd2.executeQuery();
                        
                       int o=0;
                        while(rd2.next())
                        {
                        if(gpn.equals(rd2.getString("groupname")))
                        {
                        o++;
                        break;
                        }
                        }
                        
                        
                        if(o==0)
                        {
                        ctnd1++;
                        %>
                        <div class="poi">
                                        
                            <p><h3><a href="pagecontroller?type=2&&name=<%=name%>&&nadm<%=nmad%>&&groupname=<%=gpn%>&&objective=<%=obj%>"><%=gpn%></a></h3>
                                       <span style="float:right"> <%=obj%> group</span></p>
                                        <p><%=nmad%> is the admin of the group</p>
                                        
                                        <a href="GroupServlet?type=4&&kind=1&&name=<%=name%>&&groupname=<%=gpn%>&&objective=<%=obj%>&&nm2=<%=nmad%>">Send Group Request</a>
                                        
                                        
                                    </div>
                        <%
                        }
                        }
                        
                        
                       
                        if(ctnd1==0)
                         {
                          %>
                        <div class="col-md-8 col-md-offset-2">
					There is no new group suggestions.
				</div>
                    <%
                        }
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

