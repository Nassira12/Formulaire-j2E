<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>calcule poids </title>
</head>
<body>
<%! double taille ,poids ; String genre,genre1,genre2 ,t; %>
<% t=request.getParameter("taille"); %>
<% genre1=request.getParameter("genre1"); %>
<% genre2=request.getParameter("genre2"); %>
<%  double  taille = Float.parseFloat(t); %>

<%  if ( genre != genre1) { %>
<% poids=((62.1 * taille) - 44.7)/1000 ; %>
votre poids ideal est : <%=poids %> kg
<% } else { %>
<% poids=((72.7 * taille) - 58)/1000; %>
votre poids ideal est : <%=poids %> kg
<% } %>




</body>
</html>