<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href='http://localhost:8084/Ecommerce_RESTful_Client_Service_Bouzal/CSS/monstyle.css' rel='stylesheet' type='text/css'>
<title>Insert title here</title>
</head>
<body>

 <form id="paiment">
   <legend>Votre identité</legend>
   <fieldset>
     <table>
     <tr><td><label for="mon">Nom</label></td><td><input type="text" id="nom" name="nom" placeholder="Pénom et Nom" required ></td></tr>
     <tr><td><label for="mail">Email</label></td><td><input type="email" id="email" name="email" placeholder="exemple@gmail.com" required ></td></tr>
     <tr><td><label for="telephone">Téléphon</label></td><td><input type="tel" id="telephone" name="telephone" placeholder="064504...." required ></td></tr>
      
     </table>
    </fieldset>
     <legend>Mode de Payement</legend>
      <fieldset>
       <table>
        <tr><td colspan="2"><legend>Type de carte bancaire</legend></td></tr>
        <tr><td><input type="radio" id="visa" name="type_de_carte"></td><td><label for="visa">VISA</label><img src="visa.jpg"/></td></tr>
        <tr><td><input type="radio" id="mastercart" name="type_de_carte"></td><td><label for="mastercart">Mastercart</label><img src="master.jpg"/></td></tr>
       </table>
      </fieldset>
      
      <fieldset>
       <table>
        <tr><td><label for="numero_de_carte">N° de carte</label></td><td><input type="number" id="numero_de_carte" name="numero_de_carte"></td></tr>
        <tr><td><label for="securite">Code de sécurité</label></td><td><input type="number" id="securite" name="securite"></td></tr>
       </table>
      </fieldset>
      <fieldset>
       <table>
       <tr><td><button type="submet">A'achète</button></td></tr>
       </table>
      </fieldset>
 
 </form>

</body>
</html>