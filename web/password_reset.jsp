<%-- 
    Document   : password_reset
    Created on : Apr 9, 2018, 6:15:24 PM
    Author     : dduv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/header.html" %>
        <h1>Hello ${user.firstName}!</h1>
        <p><i>Your current password is: ${user.password}</i></p>
        
        <form action="login" method="post">
            <input type="hidden" name="action" value="reset">

            <label class="pad_top">New Password:</label>
            <input type="password" name="newPassword" required><br>
            
            <!-- // Reset Password button -->
            <label>&nbsp;</label>
            <input type="submit" value="Reset Password" class="margin_left">
           

        </form>
        <a href="index.jsp">Home Page</a>

<%@ include file="/footer.jsp" %>
