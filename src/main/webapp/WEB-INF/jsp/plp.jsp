<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>

<head>
    <title>Shop</title>
</head>

<body>
    <fmt:setLocale value="en_US" />
    <fmt:setBundle basename="i18n.DemoBundle" var="lang" />
    <header>
        <form action="">
            <select name="forma" onchange="location = this.value;">
                <option></option>
                <option value="http://localhost:8080/shop/plp.jsp?lang=DE">DE</option>
                <option value="http://localhost:8080/shop/plp.jsp?lang=EN">EN</option>
                <option value="http://localhost:8080/shop/plp.jsp?lang=FR">FR</option>
            </select>
        </form>
    </header>

    <c:if test="${param.lang.equals('DE')}">
        <fmt:setLocale value="de_DE" />
        <fmt:setBundle basename="i18n.DemoBundle" var="lang" />
    </c:if>

    <c:if test="${param.lang.equals('EN')}">
        <fmt:setLocale value="en_US" />
        <fmt:setBundle basename="i18n.DemoBundle" var="lang" />
    </c:if>

    <c:if test="${param.lang.equals('FR')}">
        <fmt:setLocale value="fr_FR" />
        <fmt:setBundle basename="i18n.DemoBundle" var="lang" />
    </c:if>

    <jsp:include page="/getProducts" />

    <h3>Product: </h3>

    <c:forEach var="var" items="${product}">

        <fmt:message key="NAME" bundle="${lang}" />:<a href="http://localhost:8080/shop/pdp.jsp?name=${var.name}">
            <c:out value="${var.name}" /></a> <br>
        <fmt:message key="PRICE" bundle="${lang}" />:
        <c:out value="${var.pret}" /> <br>
        <fmt:message key="DESCRIPTION" bundle="${lang}" />:
        <c:out value="${var.shortDescription}" /> <br>
        <fmt:message key="DISPONIBILITY" bundle="${lang}" />:
        <c:out value="${var.disponibility}" /><br>

        <c:if test="${var.flag ==true}">
            <fmt:message key="SALE" bundle="${lang}" />
        </c:if>

        <br><br>
    </c:forEach>

    <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/mario" user="root" password=""/>
    <sql:query var="rs" dataSource="${db}">select * from mario.gadgets</sql:query>

    <c:forEach items="${rs.rows}" var="gadget">
        <br> <c:out value="${gadget.gid}"></c:out> : <c:out value="${gadget.gname}"></c:out> : <c:out value="${gadget.gprice}"></c:out>
     </c:forEach>
</body>

</html>