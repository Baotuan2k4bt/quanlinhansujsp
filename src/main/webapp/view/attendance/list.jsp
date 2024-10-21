
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
      margin-top: 30px;
    }
    .table-responsive {
      margin-top: 20px;
    }
    .table th {
      background-color: #f1f1f1;
    }
    .btn-group {
      display: flex;
      justify-content: space-between;
      align-items: center;
    }
  </style>
</head>
<body>
<a class="btn btn-success" href="/admin/att/create">Addnew</a>
<c:out  value="${data.size()}"/>
<table class="table"  >
  <tr>
    <td>Mã nhân viên</td>
    <td>Họ Tên </td>
    <td>Mã Ca </td>
    <td>Ngày làm việc </td>
    <td>giờ vào </td>
    <td>Giờ ra </td>
    <td>Số giờ làm </td>
    <td> Acction </td>
  </tr>

  <!-- Use JSTL to iterate over the userList and display the Data --><c:forEach  items="${data}" var="user">
  <tr>
    <td><c:out value = "${user.maNV}"/></td>
    <td><c:out value = "${user.hoTen}"/></td>
    <td><c:out value = "${user.tenCa}"/></td>
    <td><c:out value = "${user.ngayLamViec}"/></td>
    <td><c:out value = "${user.gioVao}"/></td>
    <td><c:out value = "${user.gioRa}"/></td>
    <td><c:out value = "${user.soGioLam}"/></td>
    <!-- Add a link to edit the user's details -->
    <td>
      <a class="btn btn-danger" onclick="return confirm('Are you sure ?')" href="${pageContext.request.contextPath}/admin/att/delete?maNV=<c:out value="${user.maNV}"/> ">Delete</a>
      <a  class="btn btn-primary " href="${pageContext.request.contextPath}/admin/att/update?maNV=<c:out value="${user.maNV}"/> ">Update</a>
    </td>
    <!-- Add a link to delete the user -->
  </tr>
</c:forEach>
</table>
</body>
</html>
