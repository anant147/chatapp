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
							<span class="intro-text-small">Connect with your friends,</span>
							<h1><h1><%
            String name=(String)session.getAttribute("name");
            %>
                                                        <%=name%></h1></h1>	
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
  <button class="tablinks" onclick="openActivity(event, 'Friends')" id="defaultOpen">Friends</button>
  <button class="tablinks" onclick="openActivity(event, 'Sent Friend Requests')">Sent Friend Requests</button>
  <button class="tablinks" onclick="openActivity(event, 'Received Friend Requests')">Received Friend Requests</button>
  <button class="tablinks" onclick="openActivity(event, 'Friend Suggestions')">Friend Suggestions</button>
</div>

<div id="Friends" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  
  <div class="gtco-section">
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">
					<h2> Your Friends</h2>
					<p></p>
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
</div>

<div id="Sent Friend Requests" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <div class="gtco-section">
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">
					<h2>Sent Friend Requests</h2>
					<p></p>
				</div>
			</div>
		    <%
                             ConnectionClass c1=new ConnectionClass();
                             c1.conClass();
                             PreparedStatement s3=null;
                             ResultSet r3=null;
                             String qry3="select member2 from friend where member1=? and value=?";
                             s3=c1.con.prepareStatement(qry3);
                             
                             s3.setString(1,name);
                             int value=1;
                             s3.setInt(2,value);
                             
                             r3=s3.executeQuery();
                             
                             int c0=0;
                             int r0=0;
                             int o0=-1;
                             
                             while(r3.next())
                             {
                             String name1=r3.getString("member2");
                             
                             r0=c0/4;
                             
if(r0!=o0)
{
o0=r0;
%>
<div class="row"></div>
<%
}
                             
                             %>
                             
                                 <div class="col-md-3 col-sm-6">
                                     <h2><a href="profilefriend.jsp?name=<%=name1%>"><%=name1%></a></h2>
                                                  <p><a href="FriendServlet?type=3&&member1=<%=name%>&&member2=<%=name1%>">Delete</a></p>
                                 </div>
                             
                             <%
                             
                             c0++;
                             
                             }
                             
                              if(c0==0)
                              {
                              %>
                              <div class="row">
                                  <div class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">
                                  <h1><p>You have not sent any friend request</p></h1>
                                  </div>
                              </div>
                              <%
                              }
                             %>	
                    
		</div>
	</div> 
</div>

<div id="Received Friend Requests" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <div class="gtco-section">
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">
					<h2>Received Friend Requests </h2>
					<p></p>
				</div>
			</div>
			<%
                                ConnectionClass c2=new ConnectionClass();
                                c2.conClass();
                                PreparedStatement s4=null;
                                ResultSet r4=null;
                                String qry4="select member2 from friend where member1=? and value=?";
                                int value2=2;
                                s4=c2.con.prepareStatement(qry4);
                                s4.setString(1,name);
                                s4.setInt(2,value2);
                                
                                r4=s4.executeQuery();
                                
                                int ck=0;
                                int r9=0;
                                int o9=-1;
                                
                                while(r4.next())
                                {
                                    
                                String name1=r4.getString("member2");
                                
                                r9=ck/4;
                                ck++;
                                
                                if(r9!=o9)
                                {
                                    o9=r9;
                                    
                                    %>
                                    <div class="row"></div>
                                    <%
                                }
                                
                                %>
                                
                                    <div class="col-md-3 col-sm-6">
                                        <h2><p><a href="profilefriend.jsp?name=<%=name1%>"><%=name1%></a></h2>
                                        <p><a href="FriendServlet?type=2&&member1=<%=name%>&&member2=<%=name1%>">Accept</a></p>
                                        <p><a href="FriendServlet?type=3&&member1=<%=name%>&&member2=<%=name1%>">Delete</a></p>
                                    </div>
                                
                                <%
                                }
                                
                                

                                 if(ck==0)
                                  {
                                   %>
                                   <div class="row">
                                       <div class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">
                                  <h1><p>You have not received any friend request</p></h1>
                                  </div>
                                   </div>
                                   <%
                                  }
                                %>
		</div>
	</div>

</div>
	
	<div id="Friend Suggestions" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <div class="gtco-section">
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">
					<h2> Friend Suggestions</h2>
					<p></p>
				</div>
			</div>
                    
                                       <%
                            ConnectionClass ca=new ConnectionClass();
                            ca.conClass();
                            PreparedStatement s1=null;
                            PreparedStatement s2=null;
                            ResultSet rs1=null;
                            ResultSet rs2=null;
                            
                            String qry1="select name from user";
                            
                            s1=ca.con.prepareStatement(qry1);
                            rs1=s1.executeQuery();
                            
                            int cb=0;
                            int rb=0;
                            int op=-1;
                            
                            while(rs1.next())
                            {
                            String name1=rs1.getString("name");
                            
                            if(!(name1.equals(name)))
                            {
                            
                            
                            String qry2="select * from friend where member1=? and member2=?";
                            s2=ca.con.prepareStatement(qry2);
                            s2.setString(1, name);
                            s2.setString(2,name1);
                            rs2=s2.executeQuery();
                            
                            if(!(rs2.next()))
                            {
                                
                                rb=cb/4;
                                
                                
                               if(rb!=o)
                               {
                               o=rb;
                               %>
                               <div class="row">
                               </div>
                               <%
                               }
                                

                            
                            %>
                            
                                    <div class="col-md-3 col-sm-6" border-style="solid">
                                      <h2> <center><p><a href="profilefriend.jsp?name=<%=name1%>"><%=name1%></a> </p></h2>
                                      <center><p><a href="FriendServlet?type=1&&member1=<%=name%>&&member2=<%=name1%>">Add friend</a></p></center>
                                       
                                    </div>
                             
                            <%
                            
                                cb++;
                            
                                            
					
						
                                                       
                            }
                            
                            }
                            }

                            if(cb==0)
                            {
                            %>
                            <div class="row">
                                       <div class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">
                                  <h1><p>You have no new  friend suggestions.</p></h1>
                                  </div>
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

