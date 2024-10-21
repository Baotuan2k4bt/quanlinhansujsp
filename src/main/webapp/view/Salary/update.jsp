<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 10/20/2024
  Time: 8:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/admin/salar/update?maNV=<c:out value='${salary.maNV}'/>" method="post">

    <label for="thang">Tháng:</label>
    <input type="number" value="<c:out value='${salary.thang}'/>" id="thang" name="thang"><br>

    <label for="tongSoGioLam">Tổng Số Giờ Làm:</label>
    <input type="number"value="<c:out value='${salary.tongSoGioLam}'/>"  id="tongSoGioLam" name="tongSoGioLam" ><br>

    <label for="luongTheoGio">Lương Theo Giờ:</label>
    <input type="number"value=" <c:out value='${salary.luongTheoGio}'/> " id="luongTheoGio" name="luongTheoGio" step="0.01"><br>

    <label for="phuCap">Phụ Cấp:</label>
    <input type="number"value="<c:out value='${salary.phuCap}'/>"  id="phuCap" name="phuCap" step="0.01"><br>

    <button type="submit">chỉnh sửa</button>
</form>
</body>
</html>
