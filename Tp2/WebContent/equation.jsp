<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> resolution d'equation</title>
</head>
<body>
<%! String un,deux,trois; %>
<%! double a,b ,c ,sol1,sol2,determ; %>

<% un=request.getParameter("a"); %>
<%  deux=request.getParameter("b") ; %>
<% trois=request.getParameter("c"); %>
<% double a = Float.parseFloat(un); %>
<% double b = Float.parseFloat(deux); %>
<% double c = Float.parseFloat(trois); %>
<% determ=(b*b)-4*a*c; %>
<% if (determ <0 ) {%> 
 Aucun resultat reel ! 
<% } else if (determ > 0){ sol1=( -b + Math.sqrt(determ)  )/2*a ; sol2=(-b- Math.sqrt(determ))/2*a ;%>	
 les solutions sont <%= sol1 %> et <%= sol2 %>
<% } else { sol1=(-b)/2*a; %>        
la solution est <%= sol1  %>  <% } %>	
	
</body>
</html>