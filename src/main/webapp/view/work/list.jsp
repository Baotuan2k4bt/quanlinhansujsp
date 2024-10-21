
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Danh sách Người dùng</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link rel="stylesheet" href="styles.css"> <!-- Link đến CSS tùy chỉnh nếu cần -->
</head>
<body>
<div class="container mt-5">
  <h1 class="text-center mb-4">Danh sách Người dùng</h1>
  <a class="btn btn-success mb-3" href="/admin/work/create">Thêm mới</a>
  <div class="alert alert-info">
    <strong>Tổng số người dùng:</strong> <c:out value="${data.size()}"/>
  </div>
  <table class="table table-striped table-bordered">
    <thead class="table-dark">
    <tr>
      <th>Mã nhân viên</th>
      <th>Họ tên</th>
      <th>Mã ca</th>
      <th>Tên ca</th>
      <th>Thứ</th>
      <th>Ngày đăng ký</th>
      <th>Trạng thái</th>
      <th>Hành động</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${data}" var="work">
      <tr>
        <td><c:out value="${work.maNV}"/></td>
        <td><c:out value="${work.hoTen}"/></td>
        <td><c:out value="${work.maCa}"/></td>
        <td><c:out value="${work.tenCa}"/></td>
        <td><c:out value="${work.thuTrongTuan}"/></td>
        <td><c:out value="${work.ngayDangKy}"/></td>
        <td><c:out value="${work.trangThai}"/>

        </td>
        <td>
          <a class="btn btn-danger btn-sm" onclick="return confirm('Bạn có chắc chắn muốn xóa?')"
             href="${pageContext.request.contextPath}/admin/work/delete?maCa=${work.maCa}">Xóa</a>
          <a class="btn btn-primary btn-sm" href="${pageContext.request.contextPath}/admin/work/update?maNV=${work.maNV}">Cập nhật</a>
        </td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
