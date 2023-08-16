<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="java.time.LocalDateTime"
    isELIgnored="false"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
</head>
<body>
<h1>This is help page</h1>
<%-- <%
    String name=(String)request.getAttribute("name");
    int rno=(Integer)request.getAttribute("rollnumber");
    LocalDateTime now=(LocalDateTime)request.getAttribute("time");
%> --%>

<h1>Hello my name is <%-- <%= name %> --%> ${name }</h1>
<h1>My rollnumber is <%-- <%= rno %> --%> ${rollnumber }</h1>
<h1>Today's Date Time is <%-- <%= now %> --%> ${time}</h1>
<hr>
${marks }
<c:forEach var="item" items="${marks}">
<%-- <h1>${item}</h1> --%>
<h1><c:out value="${item}"></c:out></h1>
</c:forEach>

</body>
</html>