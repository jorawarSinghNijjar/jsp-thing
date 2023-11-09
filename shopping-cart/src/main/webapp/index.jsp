<%@page import="com.shopping.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
  <head>
  <%
	User auth = (User) request.getSession().getAttribute("auth");
	if(auth != null){
		request.setAttribute("auth", auth);
	}
%>
    <%@include file="includes/head.jsp" %>
    <title>Home</title>
  </head>
  <body>
	<%@include file="includes/navbar.jsp" %>
    <%@include file="includes/footer.jsp" %>
  </body>
</html>
