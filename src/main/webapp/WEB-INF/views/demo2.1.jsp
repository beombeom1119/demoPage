<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*"%>
<%
    String actionURL = "https://secureapi.test.eximbay.com/Gateway/BasicProcessor.krp";
%>
<html>
<head>
    <title>Demo Page</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<h2>데모 페이지</h2>
<form action="<%=actionURL%>" method="post">
    ver :  <input type="text" name="ver" value="230" />
    mid :  <input type="text" name="mid" value="1849705C64" />
    txntype : <input type="text" name="txntype" value="AUTHORIZE_PA" />


    <button type="submit">전송</button>
</form>

</body>
</html>

<%--가능 URL + Param--%>
<%--https://secureapi.test.eximbay.com/Gateway/BasicProcessor.krp?ver=230&mid=1849705C64&txntype=PAYMENT&ref=20220518150137&cur=USD&amt=1&paymethod=VISA&multi_ paymethod=JCB&shop=Test SHOP&buyer=test sample&tel=82020293029&email=Kobe@eximbay.com&lang=EN&returnurl=https://secureapi.test.eximbay.com/paytest/demo/returnurl.jsp&param1=---param1----&param2=---param2----&param3=----param3----&charset=UTF-8&fgkey=F6DCE41DA82064F478B934663FD2A07E&item_%23_product=1&item_%23_quantity=1&item_%23_link=eximbay.com&shipTo_city=Hanoi&shipTo_country=KR&shipTo_firstName=bum&shipTo_lastName=lee&shipTo_phoneNumber=82 1231232&shipTo_postalCode=21605&shipTo_state=NY&shipTo_street1=123 Main street, 56 Le Loi&dfs_deliverer=123&dfs_delivery=123&dfs_delivery_date=123&traveldt=123&tticketnum=123&passengernm=123&ticketissueagentid=123&leaveplacecd=123&flightnm=12312312312&displaytype=POPUP--%>