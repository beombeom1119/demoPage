<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*"%>
<%
    String actionURL = " requesttest";
%>
<html>
<head>
    <title>Demo Page</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body style="">
<h2>데모 페이지</h2>
<form action=<%=actionURL%> method="post" >
    ver :  <input type="text" name="ver" value="230" /><br/>
    mid :  <input type="text" name="mid" value="1849705C64" /><br/>
    <button type="submit">전송</button>
</form>
</body>
</html>
