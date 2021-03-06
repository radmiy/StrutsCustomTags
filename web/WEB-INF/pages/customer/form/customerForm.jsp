<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/tld/reservation.tld" prefix="rtag"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Customer</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
    <script src="/bootstrap/js/bootstrap.min.js"></script>
    <%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
</head>
<body>
    <rtag:reservationTags element="Customer">Email();Phone();Payment(AmountPaid,FormOfPaymentTypeCode,CurrencyCode);</rtag:reservationTags>
    <div class="container">
        <div class="jumbotron">
            <h1>
                ${Customer.nameElement}
            </h1>
            <p>
                <c:forEach items="${Customer.attributes}" var="entry">
            <div>
                    ${entry.key} = ${entry.value}
            </div>
            </c:forEach>
            </p>
        </div>
        <dl>
            <c:forEach items="${Customer.content}" var="content">
                <c:forEach items="${content.value}" var="entry">
                    <dt>
                            ${entry.nameElement}
                    </dt>
                    <dd>
                        <c:forEach items="${entry.attributes}" var="attr">
                            <div>
                                    ${attr.key} = ${attr.value}
                            </div>
                        </c:forEach>
                    </dd>
                </c:forEach>
            </c:forEach>
        </dl>
    </div>
</body>
</html>
