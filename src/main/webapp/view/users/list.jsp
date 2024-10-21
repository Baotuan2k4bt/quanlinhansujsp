<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<h1>User Page</h1>
<a class="btn btn-success" href="/admin/users/create">Addnew</a>
<c:out  value="${data.size()}"/>
<table class="table"  >
    <tr>
        <td>ID</td>
        <td>Mã SV</td>
        <td>Họ Đệm</td>
        <td>Tên </td>
        <td>Địa chỉ </td>
        <td></td>
    </tr>

    <!-- Use JSTL to iterate over the userList and display the Data --><c:forEach  items="${data}" var="user">
        <tr>
            <td><c:out value = "${user.id}"/></td>
            <td><c:out value = "${user.maSV}"/></td>
            <td><c:out value = "${user.hoDem}"/></td>
            <td><c:out value = "${user.ten}"/></td>
            <td><c:out value = "${user.diaChi}"/></td>
            <!-- Add a link to edit the user's details -->
            <td>
                <a class="btn btn-danger" onclick="return confirm('Are you sure ?')" href="${pageContext.request.contextPath}/admin/users/delete?id=<c:out value="${user.id}"/> ">Delete</a>
            <a  class="btn btn-primary " href="${pageContext.request.contextPath}/admin/users/update?id=<c:out value="${user.id}"/> ">Update</a>
            </td>
            <!-- Add a link to delete the user -->
        </tr>
    </c:forEach>
</table>
</body>
</html>