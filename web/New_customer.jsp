<%-- 
    Document   : New_customer.jspi
    Created on : Mar 22, 2018, 7:19:49 PM
    Author     : dduv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/header.html" %>
        <h1>Hello Titan!</h1>
    <p>Enter your contact information.</p>
    <p><i>${message}</i></p>
    <form action="newCustomer" method="post">
        <input type="hidden" name="action" value="add">        
        <label class="pad_top">First Name:</label>
        <input type="text" name="firstName"><br>
        <label class="pad_top">Last Name:</label>
        <input type="text" name="lastName"><br>
        <label class="pad_top">Phone:</label>
        <input type="text" name="phone"><br>
        <label class="pad_top">Address:</label>
        <input type="text" name="address"><br>
        <label class="pad_top">City:</label>
        <input type="text" name="city"><br>
        <label class="pad_top">State:</label>
        <input type="text" name="state"><br>
        <label class="pad_top">Zip Code:</label>
        <input type="text" name="zipCode"><br>
        <label class="pad_top">Email:</label>
        <input type="email" name="email"><br>
        <label>&nbsp;</label>
        <input type="submit" value="Submit" class="margin_left">
    </form>
    
<%@ include file="/footer.jsp" %>
