<jsp:useBean id="livre" class="beans.Livre" scope="page"></jsp:useBean>
<% String titre ="Durée de vie des javaBeans"; %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2><center><%= titre %></center></h2>
<h2>Avant modification du JavaBean</h2><br>
	Le titre du livre est: <jsp:getProperty property="titre" name="livre"/><br>
	Le nom de son auteur est: <jsp:getProperty property="auteur" name="livre"/>

<jsp:setProperty property="auteur" name="livre" value="J.K.Rowling"/>
<jsp:setProperty property="titre" name="livre" value="Harry Potter"/>

<h2>Après modification du JavaBean</h2><br>
	Le titre du livre est: <jsp:getProperty property="titre" name="livre"/><br>
	Le nom de son auteur est: <jsp:getProperty property="auteur" name="livre"/>
</body>
</html>