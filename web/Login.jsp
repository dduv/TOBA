<%-- 
    Document   : Login
    Created on : Apr 9, 2018, 10:03:54 PM
    Author     : dduv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/header.html" %>
        <div>Log In</div>

        <form action="login" method="post">
            <input type="hidden" name="action" value="login">
            <label class="pad_top">Username:</label>
            <input type="text" name="username" required><br>
            <label class="pad_top">Password:</label>
            <input type="password" name="password" required><br>

            <!-- // Login button -->
            <label>&nbsp;</label>
            <input type="submit" value="Login" class="margin_left">
            
            <!-- // Reset Password button -->
            <label>&nbsp;</label>
            <a href="password_reset.jsp">Reset Password</a>

            <!-- // link to "New Customer Sign Up page" -->
            <label>&nbsp;</label>
            <a href="New_customer.jsp">New Customer Sign Up</a>
            
            <!-- // link to "Admin Login page"
            <label>&nbsp;</label>
            <a href="admin/login.html">Admin Access</a>   -->
           

        </form>     
        
<%@ include file="/footer.jsp" %>

