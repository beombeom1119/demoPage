<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*"%>
<%@ page import="com.example.demo.VO.DemoVO" %>
<%
    String actionURL = "https://secureapi.test.eximbay.com/Gateway/DirectProcessor.krp";
    String mid = request.getParameter("mid");
    String ver = request.getParameter("ver");


%>
<html>
<head>
    <title>Demo Page</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body style="">
<h2>데모 페이지</h2>
<form method="post" action="request.jsp">

    <%=ver%>
    <%=mid%>

</form>
</body>
</html>
