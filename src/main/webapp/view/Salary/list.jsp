<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a class="btn btn-success mb-3" href="/admin/salar/create">Thêm mới</a>
<strong>Tổng số người dùng:</strong> <c:out value="${data.size()}"/>
<table border="1">
    <tr>
        <th>Mã Nhân Viên</th>
        <th>Họ Tên</th>
        <th>Tổng Số Giờ Làm</th>
        <th>Lương Theo Giờ (25,000 VND)</th>
        <th>Tháng</th>
        <th>Tổng Lương</th>
        <th>Hành Động</th>
    </tr>
    <c:forEach items="${data}" var="salary">
        <tr>
            <td><c:out value="${salary.maNV}"/></td>
            <td><c:out value="${salary.hoTen}"/></td>
            <td><c:out value="${salary.tongSoGioLam}"/></td>
            <td><c:out value="${salary.luongTheoGio}"/></td>
            <td><c:out value="${salary.thang}"/></td>
            <td><c:out value="${salary.tongLuong}"/></td>
            <td>
                <a class="btn btn-danger btn-sm" onclick="return confirm('Bạn có chắc chắn muốn xóa?')"
                   href="${pageContext.request.contextPath}/admin/salar/delete?maNV=${salary.maNV}">Xóa</a>
                <a class="btn btn-primary btn-sm" href="${pageContext.request.contextPath}/admin/salar/update?maNV=${salary.maNV}">Cập nhật</a>
        </tr>
    </c:forEach>
</table>

</body>
</html>
