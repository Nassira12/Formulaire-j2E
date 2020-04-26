<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>La liberté</title>
</head>
<body>
	<center>
		<h2>Bonjour la liberté!</h2>
		<jsp:useBean id="libert" class="beans.Democratie" scope="session"/>
		<p>Passons au vote....</p>
		<% libert.voter(); %>
		<p>Le nombre de voix après le vote est: </p>
		<jsp:getProperty name="libert" property="voix" />
	</center>
</body>
</html>