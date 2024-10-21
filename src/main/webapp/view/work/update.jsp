<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 10/16/2024
  Time: 10:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
<style>
    body {
        font-family: 'Roboto', sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 20px;
    }
    .container {
        max-width: 600px;
        margin: auto;
        background-color: white;
        border-radius: 8px;
        box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
        padding: 30px;
    }
    h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #333;
    }
    label {
        font-weight: bold;
        margin-bottom: 5px;
        display: block;
        color: #555;
    }
    input[type="text"],
    input[type="date"],
    select {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 4px;
        transition: border-color 0.3s;
    }
    input[type="text"]:focus,
    input[type="date"]:focus,
    select:focus {
        border-color: #007bff;
        outline: none;
    }
    button {
        width: 100%;
        padding: 10px;
        background-color: #007bff;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        transition: background-color 0.3s;
    }
    button:hover {
        background-color: #0056b3;
    }
    .footer {
        text-align: center;
        margin-top: 20px;
        color: #777;
    }
</style>
</head>
<body>
<div class="container">
    <h2>Chỉnh sửa ca làm việc </h2>
    <form action="/admin/work/create" method="post">
        <input type="hidden" name="maCa" value="${ca.maCa}">
        <label for="maNV">Mã nhân viên:</label>
        <input type="text" id="maNV" name="maNV" placeholder="Mã nhân viên" required value="${ca.maNV}">

        <label for="maCa">Mã ca:</label>
        <input type="text" id="maCa" name="maCa" placeholder="Mã ca" required value="${ca.maCa}">

        <label for="ngayDangKy">Ngày đăng ký:</label>
        <input type="date" id="ngayDangKy" name="ngayDangKy" placeholder=" Ngày đăng kí" required value="${ca.ngayDangKy}">
        <label for="trangThai">Trạng thái:</label>
        <input type="text" id="trangThai" name="trangThai" placeholder="Trạng thái" required value="${ca.trangThai}">
        <button type="submit">Submit</button>
        <a href="/admin/work/list" class="footer">Quay lại</a>
</form>
    </div>

</body>
</html>
