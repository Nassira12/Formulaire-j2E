<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

 <% 
 
 int op1 = Integer.parseInt(request.getParameter("op1"));
 int op2 = Integer.parseInt(request.getParameter("op2"));
 String operation =request.getParameter("operation");
 String resultat= "" ;
 %>
  <%! 
  float lesResul;
  %>       
 <H2>la reponse est : </H2>      
 <% if (operation.equals("add")) {
            resultat = String.valueOf(op1 + op2);
            lesResul=op1+op2;
        }
 else if (operation.equals("sous")) {
    	resultat = String.valueOf(op1 - op2);
            lesResul = op1 - op2;
        }
 else if (operation.equals("mult")) {
    		resultat = String.valueOf(op1 * op2);
            lesResul = op1 * op2;
        }
 else if  (operation.equals("div")) {
    	  if (op2 == 0){ 
 %>   		
 <jsp:forward page="erreue.jsp"/>
<% 
    	} else {
    		resultat = String.valueOf(op1 / op2);
        	lesResul = op1 / op2;
 %>
<%} } %> 


</body>
</html>