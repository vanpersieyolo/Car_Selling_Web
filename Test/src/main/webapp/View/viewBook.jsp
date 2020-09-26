<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 9/26/2020
  Time: 11:39 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Danh sách những người đặt xe </title>
</head>
<body>
<center><h2>Danh sách những người đặt xe</h2>
    <h3><a href="/cars?action=">Trở về</a></h3>
</center>

<center>
    <table border="1" cellpadding="5">
        <caption><h3>Lịch người dùng đã đặt</h3></caption>
        <tr>
            <th>Tên người đặt</th>
            <th>Số điện thoại</th>
            <th>email</th>
            <th>Ngày đặt</th>
            <th>Mã xe đặt</th>
            <th>Tên xe đặt</th>
        </tr>
        <c:forEach var="book" items="${list}">
            <tr>
                <td><c:out value="${book.name}"/></td>
                <td><c:out value="${book.phone}"/></td>
                <td><c:out value="${book.email}"/></td>
                <td><c:out value="${book.date}"/></td>
                <td><c:out value="${book.car_id}"/></td>
                <td><c:out value="${book.car_name}"/></td>
            </tr>
        </c:forEach>
    </table>
</center>

</body>
</html>