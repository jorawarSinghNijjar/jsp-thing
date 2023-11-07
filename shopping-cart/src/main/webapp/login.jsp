<%@page import="com.shopping.connection.DbConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="includes/head.jsp" %>
<title>Login</title>
</head>
<body>
<div class="container">
    <div class="card" style="min-width: 320px;">
        <div class="card-body">
            <h4 class="card-title text-center">Login</h4>
            <form action="/shopping-cart/LoginServlet" method="POST">
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="text" name="email" id="email" class="form-control"/>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" name="password" id="password" class="form-control"/>
                </div>
                <div class="form-group text-center">
                    <input type="submit" value="Login" class="btn btn-primary"/>
                </div>
            </form>
        </div>
    </div>
</div>

<% DbConnection.getConnection(); %>

<%@include file="includes/footer.jsp" %>
</body>
</html>