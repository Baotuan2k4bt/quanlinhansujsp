<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 10/18/2024
  Time: 3:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/admin/att/create" method="post">
    <div class="form-group">
        <label for="maNV">Mã nhân viên:</label>
        <input type="text" id="maNV" name="maNV" class="form-control" placeholder="Nhập mã nhân viên" required>
    </div>
    <div class="form-group">
        <label for="maCa">Mã ca:</label>
        <input type="number" id="maCa" name="maCa" class="form-control" placeholder="Nhập mã ca" required>
    </div>
    <div class="form-group">
        <label for="ngayLamViec">Ngày làm việc:</label>
        <input type="date" id="ngayLamViec" name="ngayLamViec" class="form-control" required>
    </div>
    <div class="form-group">
        <label for="gioVao">Giờ vào:</label>
        <input type="time" id="gioVao" name="gioVao" class="form-control" required>
    </div>
    <div class="form-group">
        <label for="gioRa">Giờ ra:</label>
        <input type="time" id="gioRa" name="gioRa" class="form-control" required>
    </div>
    <button type="submit" class="btn btn-primary">Thêm Chấm Công</button>
</form>
</body>
</html>
