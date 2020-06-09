<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  <%@page import="ws.Service_Manager"%>

  
    
<%
  
	
	Service_Manager manager = new Service_Manager();
    String sql="select * from compte1 where id= (select Max(id) from compte1)";
	
	
%>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset ="utf-8" name="viewport" content="width=device-width, initial-scale=1">
    <title>About me</title>
    <link rel="stylesheet" href="http://localhost:8084/Ecommerce_RESTful_Client_Service_Bouzal/CSS/profile.css">
</head>
<body>
 
    <header>
    
        <div class="name ">
            
        </div>

        <div class="ava">
            <img src="http://localhost:8084/Ecommerce_RESTful_Client_Service_Bouzal/Images/le-defi-de-lanti-gravitation-scan.jpg" alt="avatar" style=""/>
        </div>    

    </header>
    <div class="content">
        <aside class="info ">
            <div class="box">
                <p class="title">
                    <i class="fa fa-info-circle"></i>Contact
                </p>


                <p class="padd-top">
                    <i class="fa fa-birthday-cake"></i>
                    
                </p>

                <p>
                    <i class="fa fa-phone"></i>
                   
                </p>            

                <p>
                    <i  class="fa fa-envelope"></i>
                    
                </p>                

                <p>
                    <i class="fa fa-home"></i>
                    123 lorem ipsum, 
                </p>                

            </div> 

            <div class="box">

                <p class="title" >
                    <i  class="fa fa-asterisk"></i>
                    Skill
                </p>

                <p class="padd-top">HTML, CSS</p>
                <div class="skill">

                    <div class="skill-right r1"></div>
                </div>

                <p>JavaScript/jQuery</p>
                <div class="skill">

                    <div class="skill-right r2"></div>
                </div>

                <p>PHP, SQL</p>
                <div class="skill">

                    <div class="skill-right r3"></div>
                </div>
            </div>  

        </aside>


        <section class="main">
            <div class="box">
                <p class="title">
                    <i class="fa fa-graduation-cap"></i>
                    Education
                </p>
                <p class="padd-top">
                    
                   JEE
                </p>
            </div>  


            <div class="box">
                <p class="title">
                    <i class="fa fa-flag"></i>
                    activity
                </p>
                <br>
                <p class="padd-top">No activity . 
                </p>
            </div>  



            <div>
                <div class="box">
                <p class="title">
                    <i class="fa fa-crosshairs" aria-hidden="true"></i>
                Career goals
                </p>
                <br>
                <p class="padd-top">
                20/20 in JEE why not. <br>
                </p>
            </div>  
            </div>

        </section>

    </div>
    <footer>    </footer>
</body>
</html>