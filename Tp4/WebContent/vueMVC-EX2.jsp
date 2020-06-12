<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : vueMVC-EX2
    Created on : 7 mai 2020, 22:21:39
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Bienvenue à votre session</h1>
        <% if (request.getParameter("firstName").equals("")){ %>
        <jsp:useBean id="nameBean" type="MVC.NameBean" scope="session"/>
        <h2> Prénom: 
            <jsp:getProperty name="nameBean" property="firstName"/>
        </h2>
        <h2> Nom:
             <jsp:getProperty name="nameBean" property="lastName"/>
        </h2>
        <%}else{%>
        <h2> Prénom:
            <%= request.getParameter("firstName") %>
        </h2>
        <h2> Nom:
            <%= request.getParameter("lastName") %>
        </h2>
        <%} %>
        <br><br><br>
        <form action="indexMVC2-EX2.html">
            <input type="submit" value="Retour">
        </form>
            
        
    </body>
</html>
