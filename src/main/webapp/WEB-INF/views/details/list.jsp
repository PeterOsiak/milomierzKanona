<%--
  Created by IntelliJ IDEA.
  User: korwi
  Date: 16.06.18
  Time: 17:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Details</title>
    <%@ include file="../jspf/head_config.jspf" %>
</head>
<body>
<%@ include file="../jspf/nav.jspf" %>
<p class="h1 text-center" style="font-family: 'Tajawal', sans-serif;">Rejs: <c:out
        value="${cruise.name}"/></p>
<table class="table table-striped table-dark">
    <thead>
    <tr>
        <th scope="col">Uczestnik</th>
        <th scope="col">Zapłacono</th>
        <th scope="col">Uczestnicy</th>
        <th scope="col">Ilość mil</th>
        <th scope="col">action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" var="details">
        <tr>
            <td><c:out value="${details.customer.fullName}"/></td>
            <td><c:out value="${details.paid}"/> &nbsp; / &nbsp;<c:out value="${details.price}"/> PLN</td>
            <td><c:out value="${count}"/> &nbsp; / &nbsp; <c:out value="${details.cruise.maxPpl}"/> Uczestników
            </td>
            <td><c:out value="${details.miles}"/></td>
            <td>
                <button class="btn btn-primary"
                        onClick="location.href='/details/form?id=${details.id}&cruiseId=${cruise.id}'">Edytuj
                </button>
                <button class="btn btn-primary"
                        onclick="location.href='/details/confirmDelete?id=${details.id}&fullName=${details.customer.fullName}'">
                    Usuń
                </button>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<button class="btn btn-primary" onclick="location.href='/details/form?cruiseId=${cruise.id}'">Dodaj
    szczegóły
</button>
</td>
<%@ include file="../jspf/main_js.jspf" %>
</body>
</html>


