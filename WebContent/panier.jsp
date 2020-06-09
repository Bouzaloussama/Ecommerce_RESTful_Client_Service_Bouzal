<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  <%@page import="ws.Service_Manager"%>
  <%@page import="java.util.ArrayList"%>
  <%@page import="java.util.Collections"%>
  <%@page import="com.Model.Book"%>
  
    
<%
  
	
	Service_Manager manager = new Service_Manager();
    String sql="panier";
	ArrayList<Book> book = manager.AllBook(sql);
	
	
	
%>
    
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width,minimum-scale=1,initial-scale=1">

        <title>My Packet</title>
        <meta name="description" content="Write a book, elevate your profile, build a business - Upload ideas and beginner tips to get you started">

       

	    	<link rel="canonical" href="C:\Users\admi\Documents\writing\mon\WebContent\WEB-INF\NewFile.html"/>
	
        <meta property="og:url" content="https://epdf.pub/"/>
        <meta property="og:title" content="Write A Book And Publish - PDF Free Download - EPDF.PUB"/>
        <meta property="og:description" content="Write a book, elevate your profile, build a business - Upload ideas and beginner tips to get you started"/>
        <meta property="og:image" content="https://epdf.pub/assets/img/epdf_logo.png"/>
        <meta property="og:site_name" content="epdf.pub"/>		
        <meta property="og:type" content="website"/>

        <meta name="twitter:card" content="summary"/>
        <meta name="twitter:site" content="@epdf.pub"/>
        <meta name="twitter:title" content="Write A Book And Publish - PDF Free Download - EPDF.PUB"/>
        <meta name="twitter:description" content="Write a book, elevate your profile, build a business - Upload ideas and beginner tips to get you started"/>
        <meta name="twitter:image" content="https://epdf.pub/assets/img/epdf_logo.png"/>

        <meta name="format-detection" content="telephone=no">
        <meta name="application-name" content="epdf.pub"/>
        <meta name="apple-mobile-web-app-status-bar-style" content="white"/>
        <meta name="apple-mobile-web-app-capable" content="yes"/>
        <meta name="mobile-web-app-capable" content="yes"/>

	<link rel="apple-touch-icon" sizes="57x57" href="http://localhost:8084/Ecommerce_RESTful_Client_Service_Bouzal/icon/apple-icon-57x57.png">
	<link rel="apple-touch-icon" sizes="60x60" href="http://localhost:8084/Ecommerce_RESTful_Client_Service_Bouzal/icon/apple-icon-60x60.png">
	<link rel="apple-touch-icon" sizes="72x72" href="http://localhost:8084/Ecommerce_RESTful_Client_Service_Bouzal/icon/apple-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="76x76" href="http://localhost:8084/Ecommerce_RESTful_Client_Service_Bouzal/icon/apple-icon-76x76.png">
	<link rel="apple-touch-icon" sizes="114x114" href="http://localhost:8084/Ecommerce_RESTful_Client_Service_Bouzal/icon/apple-icon-114x114.png">
	<link rel="apple-touch-icon" sizes="120x120" href="http://localhost:8084/Ecommerce_RESTful_Client_Service_Bouzal/icon/apple-icon-120x120.png">
	<link rel="apple-touch-icon" sizes="144x144" href="http://localhost:8084/Ecommerce_RESTful_Client_Service_Bouzal/icon/apple-icon-144x144.png">
	<link rel="apple-touch-icon" sizes="152x152" href="http://localhost:8084/Ecommerce_RESTful_Client_Service_Bouzal/icon/apple-icon-152x152.png">
	<link rel="apple-touch-icon" sizes="180x180" href="http://localhost:8084/Ecommerce_RESTful_Client_Service_Bouzal/icon/apple-icon-180x180.png">
	<link rel="icon" type="image/png" sizes="192x192"  href="http://localhost:8084/Ecommerce_RESTful_Client_Service_Bouzal/icon/android-icon-192x192.png">
	<link rel="icon" type="image/png" sizes="32x32" href="http://localhost:8084/Ecommerce_RESTful_Client_Service_Bouzal/icon/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="96x96" href="http://localhost:8084/Ecommerce_RESTful_Client_Service_Bouzal/icon/favicon-96x96.png">
	<link rel="icon" type="image/png" sizes="16x16" href="http://localhost:8084/Ecommerce_RESTful_Client_Service_Bouzal/icon/favicon-16x16.png">
	
	<link rel="manifest" href="http://localhost:8084/Ecommerce_RESTful_Client_Service_Bouzal/icon/manifest.json">
	<meta name="msapplication-TileColor" content="#ffffff">
	<meta name="msapplication-TileImage" content="C:\Users\admi\Desktop\apple-icon-57x57.png">
	<meta name="theme-color" content="#ffffff">

        <link href='http://localhost:8084/Ecommerce_RESTful_Client_Service_Bouzal/CSS/font-awesome.min.css' rel='stylesheet' type='text/css'>
	<link href="http://localhost:8084/Ecommerce_RESTful_Client_Service_Bouzal/CSS/new1.css" rel="stylesheet">
        <link href='http://localhost:8084/Ecommerce_RESTful_Client_Service_Bouzal/CSS/bootstrap.min.css' rel='stylesheet' type='text/css'>
        <link href='http://localhost:8084/Ecommerce_RESTful_Client_Service_Bouzal/CSS/bootstrap-social.css' rel='stylesheet' type='text/css'>
        <link href='http://localhost:8084/Ecommerce_RESTful_Client_Service_Bouzal/CSS/new2.css' rel='stylesheet' type='text/css'>

        <script src="http://localhost:8084/Ecommerce_RESTful_Client_Service_Bouzal/CSS/jquery-3.2.1.min.js"></script>
        <script src="http://localhost:8084/Ecommerce_RESTful_Client_Service_Bouzal/CSS/bootstrap.min.js"></script>
	    </head>
    <body>
	<div class="header">
		<div class="navbar navbar-blue" role="navigation">
		    <div class="navbar-header">
			<a class="logo" href="https://epdf.pub/">
			    <img src="http://localhost:8084/Ecommerce_RESTful_Client_Service_Bouzal/icon/epdf_logo.png" style="max-height: 60px;"/>
			</a>
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
			    <span class="icon-bar"></span>
			    <span class="icon-bar"></span>
			    <span class="icon-bar"></span>
			</button> 
		    </div>
		    <div class="collapse navbar-collapse">                 
			<ul class="nav navbar-nav">
			    <li class="active"><a href="http://localhost:8084/Ecommerce_RESTful_Client_Service_Bouzal/Home.jsp"><i class="fa fa-home"></i> Home</a></li>
			        			    <li><a href="http://localhost:8084/Ecommerce_RESTful_Client_Service_Bouzal/ADDbook.jsp"><i class="fa fa-plus"></i> Add Document</a></li>
    			    <li><a data-toggle="modal" data-target="#login"><i class="fa fa-sign-in"></i> Sign In</a></li>
    			    <li><a href="http://localhost:8084/Ecommerce_RESTful_Client_Service_Bouzal/PageRegister.html"><i class="fa fa-key"></i> Register</a></li>
			    			</ul>
			<div class="search_box">
			
<!-- ################################## Find Book ######################################### -->	
	
			    <form method="post" target="_top" action="FindBook">
				 <div class="form-group">
				    <div class="input-group input-group-lg">
					  <input type="text" class="form-control" name="FindBook" id="document_search" placeholder="Search Documents">
					   <div class="input-group-btn">
					    <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
					   </div>
				     </div>
				 </div>
			    </form>
<!-- ###################################################################################### -->
			    
			    
			</div>
		    </div>
		</div>
	</div>
	<div class="container-fluid mt-15 mb-30">
    <div class="row">
	<div class="col-md-12 text-justify">
	    <h2 class="main-title">My Packet</h2>
	    <label><h2>Your Total Price is : ${TotalPrixPanier} &emsp;Dh<a href="http://localhost:8084/Ecommerce_RESTful_Client_Service_Bouzal/JSPpage/Payement.jsp"> &emsp;&emsp;&emsp;Bought</a></h2></label>	
	</div>
    </div>
</div>

<!-- ***********************************************les ouvres *********************************************** -->

<div class="container-fluid">
            <div class="row mb-30">
	    <div class="col-md-12">
		<h2 class="main-title">Featured Documents</h2>
	    </div>
	   
	   <%for(Book b :book){ %>  
	  <!--  %String m1= "C:\\Users\\admi\\Desktop\\site_jee\\"+rs.getString(2).replaceAll(" ", "-")+".jpg"; %> -->
	           <div class="col-lg-2 col-md-3 col-xs-6">
                  <div class="note">
	                <div class="note-meta-thumb">	
	                 <a href="C:\Users\admi\Desktop\site_jee\think-like-a-man.pdf">
		             <img src="http://localhost:8084/Ecommerce_RESTful_Client_Service_Bouzal/Images/<%=b.getBookName().replaceAll(" ","-") %>.jpg" alt="Advanced Grammar in Use with Answers" />
		             <h3 class="note-title"><%=b.getBookName().replaceAll("-"," ")%></h3>
	                </a>
	               </div>
	                   <div class="note-action">
	                     <a class="more-link" href="http://localhost:8084/Ecommerce_RESTful_Client_Service_Bouzal/HTMLpage/ThinkLikeAman.html">Read more</a>&emsp;&emsp;&emsp;&nbsp;
	                     <a href="Panier?idDelet=<%=b.getId() %>">Delete</a>&emsp;<%=b.getPrix() %> DH
	                   </div>
                   </div>
                 </div> 
                 
	   <%} %>
	   		
	    </div>
        
    <nav class="text-center">
    
             <h3>thanks</h3>
    </nav></div>
	<footer class="footer" style="margin-top: 60px;">
	    <div class="container-fluid">
		
		
	    </div>
	</footer>    

	<!-- Modal -->
	<div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	    <div class="modal-dialog" role="document">
		<div class="modal-content">
		    <div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-label="Close" on="tap:login.close"><span aria-hidden="true">&times;</span></button>
			<h4 class="modal-title" id="add-note-label">Sign In</h4>
		    </div>
		    <div class="modal-body">
		    
	<!-- ********************************************************************************************************* -->	
	    
			<form method="post"  action="Auth" >
			    <div class="form-group">
				<label class="sr-only" for="email">Email</label>
				<input class="form-input form-control" type="text" name="email" id="email" value="" placeholder="Email" />
			    </div>
			    <div class="form-group">
				<label class="sr-only" for="password">Password</label>
				<input class="form-input form-control" type="password" name="password" id="password" value="" placeholder="Password" />
			    </div>
			    <div class="form-group">
				<div class="checkbox">
				    <label class="form-checkbox">
					<input type="checkbox" name="remember" value="1"  />
					<i class="form-icon"></i> Remember me
				    </label>
				    <label class="pull-right"><a href="https://epdf.pub/forgot">Forgot password?</a></label>
				</div>

			    </div>
			    <button class="btn btn-primary btn-block" type="submit">Sign In</button>
			</form>
			
			
 <!-- *************************************************************************************************************************** -->			
			
		    </div>
		</div>
	    </div>
	</div>
	
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-141114303-1"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-141114303-1');
	</script>

	<script src="http://localhost:8084/Ecommerce_RESTful_Client_Service_Bouzal/CSS/jquery-ui.min.js"></script>
	<link rel="stylesheet" href="http://localhost:8084/Ecommerce_RESTful_Client_Service_Bouzal/CSS/jquery-ui.css">
	<script>
	    $(function () {
		$("#document_search").autocomplete({
		    source: function (request, response) {
			$.ajax({
			    url: "https://epdf.pub/suggest",
			    dataType: "json",
			    data: {
				term: request.term
			    },
			    success: function (data) {
				response(data);
			    }
			});
		    },
		    autoFill: true,
		    select: function( event, ui ) {
			$(this).val(ui.item.value);
			$(this).parents("form").submit();
		    }
		});
	    });
	</script>

	<!-- cookie policy -->
	<div id="EPDFPUB_cookie_box" style="z-index:99999; border-top: 1px solid #fefefe; background: #97c479; width: 100%; position: fixed; padding: 5px 15px; text-align: center; left:0; bottom: 0;">
	    Our partners will collect data and use cookies for ad personalization and measurement. <a href="https://epdf.pub/cookie_policy" target="_blank">Learn how we and our ad partner Google, collect and use data</a>. <a href="#" class="btn btn-success" onclick="accept_EPDFPUB_cookie_box();return false;">Agree & close</a>
	</div>
	<script>
	    function accept_EPDFPUB_cookie_box() {
		document.cookie = "EPDFPUB_cookie_box_viewed=1;max-age=15768000;path=/";
		hide_EPDFPUB_cookie_box();
	    }

	    function hide_EPDFPUB_cookie_box() {
		var cb = document.getElementById('EPDFPUB_cookie_box');
		if (cb) {
		    cb.parentElement.removeChild(cb);
		}
	    }

	    (function () {
		var EPDFPUB_cookie_box_viewed = (function (name) {
		    var matches = document.cookie.match(new RegExp("(?:^|; )" + name.replace(/([\.$?*|{}\(\)\[\]\\\/\+^])/g, '\\$1') + "=([^;]*)"));
		    return matches ? decodeURIComponent(matches[1]) : undefined;
		})('EPDFPUB_cookie_box_viewed');

		if (EPDFPUB_cookie_box_viewed) {
		    hide_EPDFPUB_cookie_box();
		}
	    })();
	</script>
	<!-- end cookie policy -->
    </body>
</html>
<script src="http://localhost:8084/Ecommerce_RESTful_Client_Service_Bouzal/CSS/jquery.bxslider.min.js"></script>
<script>
    $(document).ready(function () {
        var bx_slider_top = $('#homeslider').bxSlider({
            controls: true,
            auto: true,
            pager: false,
            mode: 'fade',
            maxHeight: 300
        });
    });
</script>
