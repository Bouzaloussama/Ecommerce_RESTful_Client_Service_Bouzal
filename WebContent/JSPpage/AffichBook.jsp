<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
     <h1>Afficher book</h1>
     
     <a href="http://localhost:8084/Ecommerce_RESTful_Client_Service_Bouzal/index.jsp">back<br><br></a>
     
     <% %>             
     
     <ul>
       <il>   <div class="col-lg-2 col-md-3 col-xs-6">
          <div class="note">
	        <div class="note-meta-thumb">	
	           <a href="C:\Users\admi\Documents\writing\What_every_Body_is_saying-Joe Navarro.pdf">
		       <img src ="${adresse_image}" alt="Advanced Grammar in Use with Answers" />
		       <h3 class="note-title">Advanced Grammar in Use with Answers</h3>
	          </a>
	        </div></il><br><br>
       <il>the book Name : ${Book.getBookName()}<br><br></il>
       <il>the auteur Name : ${Book.getAuteurName()}</il>
     
     </ul>
     
     
     
</body>
</html>