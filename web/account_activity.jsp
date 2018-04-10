<%-- 
    Document   : account_activity
    Created on : Apr 9, 2018, 8:12:50 PM
    Author     : dduv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/header.html" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <c:choose>
           <c:when test="${user != null}">
                <p>Welcome, ${user.firstName} ${user.lastName}</p>
            </c:when>
            <c:otherwise>
                <p>Not Logged In</p>
            </c:otherwise>
        </c:choose>

        <Header>
            <h2>Customer activity</h2>
        </Header>
        <div>Displaying Customer activity.</div>
        
<%@ include file="/footer.jsp" %>
