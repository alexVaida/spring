<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
  <title>Shop</title>
</head>

<body>

  <jsp:include page="/getProductDetails" />

  <c:if test="${param.name.equals('BMW')}">
    <br><br>

    <fmt:setLocale value="en_US" />
    <fmt:setBundle basename="i18n.DemoBundle" var="lang" />
    <header>
      <form action="">
        <select name="forma" onchange="location = this.value;">
          <option></option>
          <option value="http://localhost:8080/shop/pdp.jsp?name=BMW&lang=DE">DE</option>
          <option value="http://localhost:8080/shop/pdp.jsp?name=BMW&lang=EN">EN</option>
          <option value="http://localhost:8080/shop/pdp.jsp?name=BMW&lang=FR">FR</option>
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


    <c:forEach var="var" items="${BMW.poze}">

      <img src="<c:out value=" ${var}" />" height="100px" width="100px">

    </c:forEach>
    <br><br>
    <fmt:message key="NAME" bundle="${lang}" />:
    <c:out value="${BMW.name}" /> <br>
    <fmt:message key="PRICE" bundle="${lang}" />:
    <c:out value="${BMW.pret}" /> <br>
    <fmt:message key="DESCRIPTION" bundle="${lang}" />:
    <c:out value="${BMW.description}" /> <br>
    <fmt:message key="DISPONIBILITY" bundle="${lang}" />:
    <c:out value="${BMW.disponibility}" /><br>
    <c:if test="${BMW.flag ==true}">
      <fmt:message key="SALE" bundle="${lang}" />
    </c:if>
    <br>
    <br>
    <c:if test="${BMW.disponibility=='AVAILABLE'}">
      <button>
        <fmt:message key="BUTTON" bundle="${lang}" /></button>
    </c:if>
    <c:if test="${BMW.disponibility=='INDISPONIBIL'}">
      <button disabled<fmt:message key="BUTTON" bundle="${lang}" /></button>
    </c:if>
    <c:if test="${BMW.disponibility=='NEEDTOCHECK'}">
      <button disabled>
        <fmt:message key="BUTTON" bundle="${lang}" /></button>
    </c:if>
    <form action="http://localhost:8080/shop/plp.jsp">
      <input type="submit" value="<fmt:message key = " BACK" bundle="${lang}" />" />
    </form>
  </c:if>

  <c:if test="${param.name.equals('Dacia')}">

    <fmt:setLocale value="en_US" />
    <fmt:setBundle basename="i18n.DemoBundle" var="lang" />
    <header>
      <form action="">
        <select name="forma" onchange="location = this.value;">
          <option></option>
          <option value="http://localhost:8080/shop/pdp.jsp?name=Dacia&lang=DE">DE</option>
          <option value="http://localhost:8080/shop/pdp.jsp?name=Dacia&lang=EN">EN</option>
          <option value="http://localhost:8080/shop/pdp.jsp?name=Dacia&lang=FR">FR</option>
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

    <br><br>
    <c:forEach var="var" items="${BMW.poze}">

      <img src="<c:out value=" ${var}" />" height="100px" width="100px">

    </c:forEach>
    <br><br>

    <fmt:message key="NAME" bundle="${lang}" />:
    <c:out value="${Dacia.name}" /> <br>
    <fmt:message key="PRICE" bundle="${lang}" />:
    <c:out value="${Dacia.pret}" /> <br>
    <fmt:message key="DESCRIPTION" bundle="${lang}" />:
    <c:out value="${Dacia.description}" /> <br>
    <fmt:message key="DISPONIBILITY" bundle="${lang}" />:
    <c:out value="${Dacia.disponibility}" /><br>
    <c:if test="${Dacia.flag ==true}">
      <fmt:message key="SALE" bundle="${lang}" />
    </c:if>
    <br>
    <br>
    <c:if test="${Dacia.disponibility=='AVAILABLE'}">
      <button>
        <fmt:message key="BUTTON" bundle="${lang}" /></button>
    </c:if>
    <c:if test="${Dacia.disponibility=='INDISPONIBIL'}">
      <button disabled>
        <fmt:message key="BUTTON" bundle="${lang}" /></button>
    </c:if>
    <c:if test="${Dacia.disponibility=='NEEDTOCHECK'}">
      <button disabled>
        <fmt:message key="BUTTON" bundle="${lang}" /></button>
    </c:if>
    <form action="http://localhost:8080/shop/plp.jsp">
      <input type="submit" value="<fmt:message key = " BACK" bundle="${lang}" />" />
    </form>
  </c:if>

  <c:if test="${param.name.equals('Audi')}">

    <fmt:setLocale value="en_US" />
    <fmt:setBundle basename="i18n.DemoBundle" var="lang" />
    <header>
      <form action="">
        <select name="forma" onchange="location = this.value;">
          <option></option>
          <option value="http://localhost:8080/shop/pdp.jsp?name=Audi&lang=DE">DE</option>
          <option value="http://localhost:8080/shop/pdp.jsp?name=Audi&lang=EN">EN</option>
          <option value="http://localhost:8080/shop/pdp.jsp?name=Audi&lang=FR">FR</option>
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

    <br><br>
    <c:forEach var="var" items="${BMW.poze}">

      <img src="<c:out value=" ${var}" />" height="100px" width="100px">

    </c:forEach>
    <br><br>
    <fmt:message key="NAME" bundle="${lang}" />:
    <c:out value="${Audi.name}" /> <br>
    <fmt:message key="PRICE" bundle="${lang}" />:
    <c:out value="${Audi.pret}" /> <br>
    <fmt:message key="DESCRIPTION" bundle="${lang}" />:
    <c:out value="${Audi.description}" /> <br>
    <fmt:message key="DISPONIBILITY" bundle="${lang}" />:
    <c:out value="${Audi.disponibility}" /><br>
    <c:if test="${Audi.flag ==true}">
      <fmt:message key="SALE" bundle="${lang}" />
    </c:if>
    <br><br>
    <c:if test="${Audi.disponibility=='AVAILABLE'}">
      <button>
        <fmt:message key="BUTTON" bundle="${lang}" /></button>
    </c:if>
    <c:if test="${Audi.disponibility=='INDISPONIBIL'}">
      <button disabled>
        <fmt:message key="BUTTON" bundle="${lang}" /></button>
    </c:if>
    <c:if test="${Audi.disponibility=='NEEDTOCHECK'}">
      <button disabled>
        <fmt:message key="BUTTON" bundle="${lang}" /></button>
    </c:if>
    <form action="http://localhost:8080/shop/plp.jsp">
      <input type="submit" value="<fmt:message key = " BACK" bundle="${lang}" />" />
    </form>
  </c:if>
</body>

</html>