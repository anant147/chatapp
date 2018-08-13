


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
            
            .div5
            {
                background-color:lightcoral;
               
                width:350px;
                float:none;
            }
            
            .xt
            {
                background-color:lavender;
                width:298px;
                height:98px;
                border:1px solid black;
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

.show {display:block;}
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
                                                    String groupname=(String)session.getAttribute("groupname");
                                                    String objective=(String)session.getAttribute("objective");
                                                    %>
							<span class="intro-text-small">Welcome to <%=objective%> group,<%=groupname%></span>
                                                        <h1>
                                                        <%=name%></h1>	
						</div>
						
					</div>
					
				</div>
			</div>
		</div>
	</header>
	<%
            
        ConnectionClass cd=new ConnectionClass();
        cd.conClass();
        PreparedStatement s1=null;
        ResultSet r1=null;
        String qy="select value from groups where name=? and groupname=?";
        
        s1=cd.con.prepareStatement(qy);
        s1.setString(1,name);
        s1.setString(2,groupname);
        
        r1=s1.executeQuery();
        
        while(r1.next())
        {
        if(r1.getInt("value")==1)
        {
        %>
        <div class="dropdown">
            
                                     <button onclick="myFunction()" class="dropbtn"><a href="pagecontroller?type=3&&name=<%=name%>&&groupname=<%=groupname%>&&objective=<%=objective%>">Activities</a></button>
  
</div>
        <%
        }
        }
        %>
	
        <script>
/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {

    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
</script>
	
	<div class="gtco-section border-bottom">
		<div class="gtco-container">
			

                    <div class="row">
                       <div class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">
					<h2> <%=groupname%></h2>
					<p><%=objective%> group</p>
				</div>
                    </div>
			<div class="row">
				<div class="col-md-6">
					<br/><br/>
                                        <center><h1>Group members</h1></center>
                                    
                                            <center><div class="ex4">
                                           
                                           <%
                                          
                                       
                                           ConnectionClass c=new ConnectionClass();
                                           c.conClass();
                                           PreparedStatement st1=null;
                                           PreparedStatement st2=null;
                                           ResultSet rs1=null;
                                           ResultSet rs2=null;
                                           
                                           String qry="select name from groups where value=? and groupname=?";
                                           
                                           st1=c.con.prepareStatement(qry);
                                           st2=c.con.prepareStatement(qry);
                                           int val1=1;
                                           int val2=2;
                                           st1.setInt(1, val1);
                                           st1.setString(2, groupname);
                                           
                                           st2.setInt(1, val2);
                                           st2.setString(2,groupname);
                                           rs1=st1.executeQuery();
                                           rs2=st2.executeQuery();
                                           
                                           int c1=0;
                                           while(rs1.next())
                                           {
                                           if(!(name.equals(rs1.getString("name"))))
                                           {
                                           String nm1=rs1.getString("name");
                                           c1++;
                                           %>
                                           <div class="xt">
						<li class="animate-box">
							<h2><p><center><a href="messagefriend.jsp?name=<%=name%>&&name1=<%=nm1%>"><%=nm1%></a>
                                   </p></center></h2>
							
						</li>
                                                </div>
                                           <%
                                           }
                                           }
                                        
                                         int c2=0;
                                         while(rs2.next())
                                         {
                                         if(!(name.equals(rs2.getString("name"))))
                                          {
                                           String nm2=rs2.getString("name");
                                            c2++;
                                            %>
                                            <div class="xt">
						<li class="animate-box">
							<h2><p><center><a href="messagefriend.jsp?name=<%=name%>&&name1=<%=nm2%>"><%=nm2%></a>
                                   </p></center></h2>
							
						</li>
                                                </div>
                                            <%
                                          }
                                         }
%>
<div class="xt">
						<li class="animate-box">
							<h2><p><center>You
                                   </p></center></h2>
							
						</li>
                                                </div>
<%

                                        %>
					
						
					
                                    
                                          
                                        </div></center>
				</div>
				<div class="col-md-6 mt-sm">
					
	
                                    <div class="ex2">
                                    <center>  
                                        <div class="ex3">
                                            <%
                                            ConnectionClass ca=new ConnectionClass();
                                            ca.conClass();
                                            PreparedStatement st=null;
                                            ResultSet ra=null;
                                            
                                            String qry1="select sender,value,date,time,content from gmessage where groupname=?";
                                            
                                            st=ca.con.prepareStatement(qry1);
                                            st.setString(1,groupname);
                                            
                                            ra=st.executeQuery();
                                            
                                            while(ra.next())
                                            {
                                            if(ra.getInt("value")==1)
                                            {
                                            if(name.equals(ra.getString("sender")))
                                            {
                                            %>
                                            <div class="div4">
                            <p><b><%=ra.getString("sender")%></b></p>
                            <p><%=ra.getString("content")%></p>
                            <p><%=ra.getString("date")%> <%=ra.getString("time")%></p>
                        </div>
                        <div class="ex1"></div>
                                            <%
                                            }
                                            else
                                           {
                                           %>
                                            <div class="div3">
                            <p><b><%=ra.getString("sender")%></b></p>
                            <p><%=ra.getString("content")%></p>
                            <p><%=ra.getString("date")%> <%=ra.getString("time")%></p>
                        </div>
                        <div class="ex1"></div>
                                          <%
                                           }
                                            }
                                            else
                                            {
                                            %>
                                            <div class="div5">
                                               <p><%=ra.getString("content")%></p>
                            <p><%=ra.getString("date")%> <%=ra.getString("time")%></p> 
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
                        <form action="GmessageServlet" method="post">
                            <input type="hidden" value="<%=name%>" name="sender">
                            <input type="hidden" value="<%=groupname%>" name="groupname">
                            <input type="hidden" value="<%=objective%>" name="objective">
                            <br/>
                            <input type="textarea" name="content" size="50">  <input type="submit" value="Send" name="send">
                            <br/>
                            <br/>
                        </form>
                        </div>
			</div>
		</div>
	</div>

	
	<br/><br/><br/>
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



