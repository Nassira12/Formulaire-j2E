<jsp:useBean id="authententification" class="beans.Authentification" scope="page"></jsp:useBean>
<%! String titre ="Tentative d'authentification"; %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h3><u><%= titre %></u></h3>
<%
String loginSaisi ="USER1";
String motDePasseSaisi="PASS1";
%>
<jsp:setProperty property="login" name="authententification" 
value="<%=loginSaisi %>"/>

<jsp:setProperty property="password" name="authententification" 
value="<%=motDePasseSaisi %>"/>

<b>Vous avez saisi les informations suivantes:</b><p>
Nom d'utilisateur: <jsp:getProperty property="login" name="authententification"/><br>
Mot de passe: <jsp:getProperty property="password" name="authententification"/><br>
</p>
<%
boolean valide=authententification.valide();
if (valide){
%>
<h3> Ces paramètres sont correctes. </h3>
<% 	
}else {
%>
<h3>Cette authentification est invalide.</h3>
<% 	
}
%>

</body>
</html>