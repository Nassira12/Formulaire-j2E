<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%! String Ht, Pr; %>
<% Ht=request.getParameter("html"); Pr=request.getParameter("prog");%>
<%float html = Float.parseFloat(Ht); %>
<%float prog = Float.parseFloat(Pr); %>

<% if((html + prog)<3) { %>
Vous êtes débutant
<% } else if ((html + prog)<5) { %>
Vous avez un niveau moyen
<% } else { %>		
Vous êtes un expert !  <% } %>
</body>
</html>