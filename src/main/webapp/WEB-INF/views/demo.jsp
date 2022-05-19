<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*"%>
<%
//    String actionURL = "https://secureapi.test.eximbay.com/Gateway/BasicProcessor.krp";
    String actionURL = " request";
    int version=230;
    String returnURl = "https://secureapi.test.eximbay.com/paytest/demo/returnurl.jsp";
    String fgKey = "13328E3978B5A4DF926386980F11D04EC777432F5BBC822ACFFDD15EF94CDD88";
    String statusurl = "https://secureapi.test.eximbay.com/paytest/demo/statusurl.jsp";
%>
<html>
<head>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <title>Demo Page</title>
</head>
<body>
<div style="margin-left: 50px">
<h2>데모 페이지</h2>

<form action="<%=actionURL%>" method="post">
    <%--    <label>ver : </label>--%>
    <input type="hidden" name="ver" value=<%=version%> /><br/>

    <label>mid :</label>
    <input type="text" name="mid" value="1849705C64" /><br/>

    <label>ver :</label>
    <input type="text" name="txntype" value="PAYMENT" /><br/>

    <label>ref :</label>
    <input type="text" name="ref" value="20220518150137" /><br/>

    <label>cur :</label>
    <input type="text" name="cur" value="USD" /><br/>

    <label>amt :</label>
    <input type="text" name="amt" value="1" /><br/>

    <label>shop :</label>
    <input type="text" name="shop" value="Test SHOP" /><br/>

    <label>buyer :</label>
    <input type="text" name="buyer" value="test sample" /><br/>

    <label>tel :</label>
    <input type="text" name="tel" value="82020293029" /><br/>

    <label>email :</label>
    <input type="text" name="email" value="Kobe@eximbay.com" /><br/>

    <label>lang :</label>
    <input type="text" name="lang" value="EN" /><br/>

    <label>returnurl :</label>
    <input type="text" name="returnurl" value=<%=returnURl%> /><br/>

    <label>charset :</label>
    <input type="text" name="charset" value="UTF-8" /><br/>


    <label>fgkey :</label>
    <input type="text" name="fgkey" value=<%=fgKey%> /><br/>

    <label>item_0_product :</label>
    <input type="text" name="item_0_product" value="1" /><br/>

    <label>item_0_quantity :</label>
    <input type="text" name="item_0_quantity" value="1" /><br/>

    <label>item_0_link :</label>
    <input type="text" name="item_0_link" value="https://www.eximbay.com/board-detail.do" /><br/>

    <label>displaytype :</label>   <!---Select 변경 필요--->
    <input type="text" name="displaytype" value="P" /><br/>

    <label>statusurl :</label>
    <input type="text" name="statusurl" value=<%=statusurl%>><br/>

    <label>item_0_unitPrice :</label>
    <input type="text" name="item_0_unitPrice" value="1" /><br/>
    <button type="submit" class="btn-primary">전송</button><br/>
</form>
</div>
</body>
</html>

<%--가능 URL + Param--%>
<%--https://secureapi.test.eximbay.com/Gateway/BasicProcessor.krp?ver=230&mid=1849705C64&txntype=PAYMENT&ref=20220518150137&cur=USD&amt=1&shop=Test SHOP&buyer=test sample&tel=82020293029&email=Kobe@eximbay.com&lang=EN&returnurl=https://secureapi.test.eximbay.com/paytest/demo/returnurl.jsp&charset=UTF-8&fgkey=13328E3978B5A4DF926386980F11D04EC777432F5BBC822ACFFDD15EF94CDD88&item_0_product=1&item_0_quantity=1&item_0_link=https://www.eximbay.com/board-detail.do&displaytype=P&statusurl=https://secureapi.test.eximbay.com/paytest/demo/statusurl.jsp&item_0_unitPrice=1--%>
