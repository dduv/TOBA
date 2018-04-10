<%-- 
    Document   : Error_java
    Created on : Mar 22, 2018, 7:39:39 PM
    Author     : dduv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/header.html" %>

        <h1>Java Error:</h1>
        <p>Sorry, Java has thrown an exception.</p>
        <p>To continue, click the Back button.</p>

        <h2>Details</h2>
        <p>Type: ${pageContext.exception["class"]}</p>
        <p>Message: ${pageContext.exception.message}</p>

<%@ include file="/footer.jsp" %>
