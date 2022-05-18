<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*"%>
<%
    String actionURL = "https://secureapi.test.eximbay.com/Gateway/BasicProcessor.krp";
    int ver=0;
%>
<html>
<head>
    <title>Demo Page</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<h2>데모 페이지</h2>
<form action="<%=actionURL%>" method="post">
    ver :  <input type="text" name="ver" value=<%=ver%> />
    mid :  <input type="text" name="mid" value="1849705C64" />
    txntype : <input type="text" name="txntype" value="AUTHORIZE_PA" />


    <button type="submit">전송</button>
</form>

</body>
</html>

<%--가능 URL + Param--%>
<%--https://secureapi.test.eximbay.com/Gateway/BasicProcessor.krp?ver=230&mid=1849705C64&txntype=PAYMENT&ref=20220518150137&cur=USD&amt=1&shop=Test SHOP&buyer=test sample&tel=82020293029&email=Kobe@eximbay.com&lang=EN&returnurl=https://secureapi.test.eximbay.com/paytest/demo/returnurl.jsp&charset=UTF-8&fgkey=13328E3978B5A4DF926386980F11D04EC777432F5BBC822ACFFDD15EF94CDD88&item_0_product=1&item_0_quantity=1&item_0_link=https://www.eximbay.com/board-detail.do&displaytype=P&statusurl=https://secureapi.test.eximbay.com/paytest/demo/statusurl.jsp&item_0_unitPrice=1--%>
