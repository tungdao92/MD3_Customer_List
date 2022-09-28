<%@ page import="java.util.List" %>
<%@ page import="rikkei.academy.demo.Customer" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<%
    List<Customer> customerList = new ArrayList<>();
    customerList.add(new Customer(1, "John",5,"img/nezuko.png"));
    customerList.add(new Customer(2, "Hello",14,"img/nezuko.png"));
    customerList.add(new Customer(3, "Zalo",17,"img/nezuko.png"));

    pageContext.setAttribute("listCustomer", customerList);
%>
<table border="1" style="width: 100%">
    <tr>
        <th>STT</th>
        <th>NAME</th>
        <th>AGE</th>
        <th>IMG</th>
    </tr>
    <c:forEach var="ct" items="#{listCustomer}">
        <tr>
            <td><c:out value="${ct.id}"></c:out></td>
            <td><c:out value="${ct.name}"></c:out></td>
            <td>
                <c:choose>
                    <c:when test="${ct.age>10&&ct.age<15}">
                        <c:out value="${'Khách teen'}"></c:out>
                    </c:when>

                    <c:when test="${ct.age<10}">
                        <c:out value="${'Trẻ nhỏ'}"></c:out>
                    </c:when>

                    <c:otherwise>
                        <c:out value="${'K'}"></c:out>
                    </c:otherwise>
                </c:choose>
            </td>


            <td align="center">
                <img width="200" height="200" src="${ct.img}">
            </td>
        </tr>
    </c:forEach>

</table>
</table>
</body>
</html>