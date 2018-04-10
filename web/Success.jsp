<%-- 
    Document   : Success
    Created on : Apr 9, 2018, 5:39:23 PM
    Author     : dduv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/header.html" %>
        <div>The Account has been successfully created.</div>
        <label>UserName:</label>
        <span>${user.userName}</span><br>
        <label>Password:</label>
        <span>${user.password}</span><br>
        <label>First Name:</label>
        <span>${user.firstName}</span><br>
        <label>Last Name:</label>
        <span>${user.lastName}</span><br>
        <label>Phone:</label>
        <span>${user.phone}</span><br>
        <label>Address:</label>
        <span>${user.address}</span><br>
        <label>City:</label>
        <span>${user.city}</span><br>
        <label>State:</label>
        <span>${user.state}</span><br>
        <label>Zip Code:</label>
        <span>${user.zipCode}</span><br>
        <label>Email:</label>
        <span>${user.email}</span><br>
        
<%@ include file="/footer.jsp" %>
