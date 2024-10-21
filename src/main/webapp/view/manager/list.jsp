
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            margin-top: 0px;
        }
        .table-responsive {
            margin-top: 20px;
        }
        .table th {
            background-color: #f1f1f1;
        }
        .btn-group {
            display: flex;
            justify-content:right;

        }
    </style>
</head>

<body>

<h1>Danh sách nhân viên</h1>
<!-- Display the size of the 'data' list -->
<c:out value="${data.size()}"/>
<!-- Table to display user data -->
<div class="container mt-4">
    <!-- Row for the Add New, Export, and Search buttons -->
    <div class="d-flex justify-content-between align-items-center mb-3">

        <form class="d-flex" method="GET" action="/admin/admins/search">
            <input class="form-control me-2" type="search" name="searchQuery" placeholder="Search Employee" aria-label="Search">
            <button class="btn btn-primary" type="submit">Search</button>
        </form>
    </div>
    <table class="table" border="1" width="500">
        <tr>
            <td>Mã Nhân viên</td>
            <td>Họ và tên</td>
            <td>Ngày sinh</td>
            <td>Chức vụ</td>
            <td>Trạng thái</td>
            <td>Giới Tính </td>
            <td>Actions</td>
        </tr>

        <!-- Loop through each 'user' in 'data' -->
        <c:forEach items="${data}" var="user">
            <tr>
                <td><c:out value="${user.maNV}"/></td>
                <td><c:out value="${user.hoTen}"/></td>
                <td><c:out value="${user.ngaySinh}"/></td>
                <td><c:out value="${user.chucVu}"/></td>
                <td><c:out value="${user.trangThai}"/></td>
                <td><c:out value="${user.gioiTinh}"/></td>

                <!-- Action buttons for update and delete -->
                <td>
                    <a class="btn btn-danger" onclick="return confirm('Are you sure ?')" href="${pageContext.request.contextPath}/admin/admins/delete?maNV=<c:out value="${user.maNV}"/> ">Delete</a>
                    <a  class="btn btn-primary "  href="${pageContext.request.contextPath}/admin/admins/update?maNV=<c:out value="${user.maNV}"/> ">Update</a>
                </td>
            </tr>
        </c:forEach>
    </table>

</div>
</body>
</html>


