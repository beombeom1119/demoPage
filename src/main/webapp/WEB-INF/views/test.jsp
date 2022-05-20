<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<%
        String actionURL = "redirect";
//    String actionURL = " request";
    int version = 230;
//    String returnURl = "https://secureapi.test.eximbay.com/paytest/demo/returnurl.jsp";
    String returnURl = "https://www.eximbay.com/index.do";
    String fgKey = "8362128AA26224EC9FB6208E8190D9674A14C95AAB3A1EDCCABEB9C18AB96C35";
//    String statusurl = "https://secureapi.test.eximbay.com/paytest/demo/statusurl.jsp";
    String statusurl = "https://secureapi.test.eximbay.com/paytest/demo/statusurl_delay.jsp";

%>
<html>
<head>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Gothic+A1:wght@100;600&family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Demo Page</title>
</head>
<body style="font-family: 'Noto Sans KR', sans-serif;">
<h2>데모 페이지</h2>

<div style="margin-left: 50px">
    <form action="<%=actionURL%>" method="post" >
        <%--    <label>ver : </label>--%>
        <input type="hidden" name="ver" value=<%=version%> /><br/>

        <div style="white-space:nowrap;">
            <label> mid</label>
            <input style="width: 140px; font-size: 13px;" class="form-control" type="text" name="mid"
                   value="1849705C64"/>
        </div>

        <label>ver :</label>
        <input style="width: 140px; font-size: 13px;" class="form-control" type="text" name="txntype" value="PAYMENT"/>

        <label>ref :</label>
        <input style="width: 140px; font-size: 13px;" class="form-control" type="text" name="ref"
               value="20220518150137"/>

        <label>cur :</label>
        <input style="width: 140px; font-size: 13px;" class="form-control" type="text" name="cur" value="USD"/>

        <label>amt :</label>
        <input style="width: 140px; font-size: 13px;" class="form-control" type="text" name="amt" value="1"/>

        <label>shop :</label>
        <input style="width: 140px; font-size: 13px;" class="form-control" type="text" name="shop" value="Test SHOP"/>

        <label>buyer :</label>
        <input style="width: 140px; font-size: 13px;" class="form-control" type="text" name="buyer"
               value="test sample"/>

        <label>tel :</label>
        <input style="width: 140px; font-size: 13px;" class="form-control" type="text" name="tel" value="82020293029"/>

        <label>email :</label>
        <input style="width: 140px; font-size: 13px;" class="form-control" type="text" name="email"
               value="Kobe@eximbay.com"/>

        <label>lang :</label>
        <input style="width: 140px; font-size: 13px;" class="form-control" type="text" name="lang" value="EN"/>

        <label>returnurl :</label>
        <input style="width: 140px; font-size: 13px;" class="form-control" type="text" name="returnurl"
               value=<%=returnURl%>/>

        <label>charset :</label>
        <input style="width: 140px; font-size: 13px;" class="form-control" type="text" name="charset" value="UTF-8"/>


        <label>fgkey :</label>
        <input style="width: 140px; font-size: 13px;" class="form-control" type="text" name="fgkey" value=<%=fgKey%> />

        <label>item_0_product :</label>
        <input style="width: 140px; font-size: 13px;" class="form-control" type="text" name="item_0_product" value="1"/>

        <label>item_0_quantity :</label>
        <input style="width: 140px; font-size: 13px;" class="form-control" type="text" name="item_0_quantity"
               value="1"/>

        <label>item_0_link :</label>
        <input style="width: 140px; font-size: 13px;" class="form-control" type="text" name="item_0_link"
               value="https://www.eximbay.com/board-detail.do"/>

        <label>displaytype :</label>   <!---Select 변경 필요--->
        <input style="width: 140px; font-size: 13px;" class="form-control" type="text" name="displaytype" value="P"/>

        <label>statusurl :</label>
        <input style="width: 140px; font-size: 13px;" class="form-control" type="text" name="statusurl"
               value=<%=statusurl%>>

        <label>item_0_unitPrice :</label>
        <input style="width: 140px; font-size: 13px;" class="form-control" type="text" name="item_0_unitPrice"
               value="1"/>

        <button type="submit" class="btn btn-primary">전송</button>
    </form>
</div>
</body>
</html>

<%--가능 URL + Param--%>
<%--https://secureapi.test.eximbay.com/Gateway/BasicProcessor.krp?ver=230&mid=1849705C64&txntype=PAYMENT&ref=20220518150137&cur=USD&amt=1&shop=Test SHOP&buyer=test sample&tel=82020293029&email=Kobe@eximbay.com&lang=EN&returnurl=https://secureapi.test.eximbay.com/paytest/demo/returnurl.jsp&charset=UTF-8&fgkey=13328E3978B5A4DF926386980F11D04EC777432F5BBC822ACFFDD15EF94CDD88&item_0_product=1&item_0_quantity=1&item_0_link=https://www.eximbay.com/board-detail.do&displaytype=P&statusurl=https://secureapi.test.eximbay.com/paytest/demo/statusurl.jsp&item_0_unitPrice=1--%>
