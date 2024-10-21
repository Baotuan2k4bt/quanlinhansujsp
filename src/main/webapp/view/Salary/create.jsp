
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/admin/salar/create" method="POST">
    <label for="maNV">Mã Nhân Viên:</label>
    <input type="text" id="maNV" name="maNV"><br>
    <label for="thang">Tháng:</label>
    <input type="number" id="thang" name="thang"><br>
    <label for="tongSoGioLam">Tổng Số Giờ Làm:</label>
    <input type="number" id="tongSoGioLam" name="tongSoGioLam" ><br>
    <label for="luongTheoGio">Lương Theo Giờ:</label>
    <input type="number" id="luongTheoGio" name="luongTheoGio" step="0.01"><br>
    <label for="phuCap">Phụ Cấp:</label>
    <input type="number" id="phuCap" name="phuCap" step="0.01"><br>

    <button type="submit">Thêm Lương</button>
</form>
</body>
</html>
