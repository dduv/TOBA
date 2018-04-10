<%-- 
    Document   : footer
    Created on : Apr 9, 2018, 8:55:50 PM
    Author     : dduv
--%>

<%@ page import="java.util.GregorianCalendar, java.util.Calendar" %>
<%
	GregorianCalendar currentDate = new GregorianCalendar();
        int thisMonth = 1 + currentDate.get(Calendar.MONTH);
        int todayDate = currentDate.get(Calendar.DATE);
	int currentYear = currentDate.get(Calendar.YEAR);
%>
<p>&copy; Copyright <%= thisMonth%>/<%=todayDate%>/<%=currentYear %> Deborah Duvall</p>
</body>
</html>
