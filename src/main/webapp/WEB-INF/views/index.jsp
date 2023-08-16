<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List,java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
</head>
<body>
<h1>This is home page</h1>
<h1>called by Home Controller</h1>
<h1>url /home</h1>
<h2>Hello URL</h2>
<%
String name=(String)request.getAttribute("name");
int id=(Integer)request.getAttribute("id");
List<String> friends=(List<String>)request.getAttribute("f");
%>
<h2>My name is <%= name %></h2>
<h2>Id is <%= id %></h2>
<%
  for(String s:friends){
%>
<h2><%=s %></h2>
	  
  <% }
%>
</body>
</html>