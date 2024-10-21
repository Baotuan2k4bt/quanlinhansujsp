
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="vi">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Cập Nhật Thông Tin Nhân Sự</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
      margin: 0;
      padding: 0;
    }
    form {
      width: 50%;
      margin: 50px auto;
      border: 1px solid #ccc;
      padding: 20px;
      border-radius: 10px;
      background-color: #fff;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    label {
      display: block;
      margin: 10px 0 5px;
      font-weight: bold;
    }
    input[type="text"], input[type="date"], input[type="email"], input[type="tel"], select {
      width: 100%;
      padding: 10px;
      margin-bottom: 15px;
      border: 1px solid #ccc;
      border-radius: 5px;
      box-sizing: border-box;
    }
    button {
      padding: 10px 20px;
      background-color: #4CAF50;
      color: white;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }
    button:hover {
      background-color: #45a049;
    }
  </style>
</head>
<body>
<form action="/admin/admins/update?maNV=<c:out value='${user.maNV}'/>" method="post">
  <h2>Cập Nhật Thông Tin Nhân Sự</h2>

  <label for="ho-va-ten">Họ và Tên</label>
  <input type="text"value="<c:out value='${user.hoTen}'/>"  id="ho-va-ten" name="ho-va-ten"  placeholder="Nhập họ và tên" required>

  <label for="ngay-sinh">Ngày sinh</label>
  <input type="date"value="<c:out value='${user.ngaySinh}'/>" id="ngay-sinh" name="ngay-sinh"  placeholder="Nhập ngày sinh" required>

  <label for="chuc-vu">Chức vụ</label>
  <input type="text"value="<c:out value='${user.chucVu}'/>" id="chuc-vu" name="chuc-vu"  placeholder="Nhập chức vụ" required>

  <label for="trang-thai">Trạng thái</label>
  <input type="text"value="<c:out value='${user.trangThai}'/>" id="trang-thai" name="trang-thai"  placeholder="Nhập trạng thái (Đang làm việc, Nghỉ phép, ...)" required>

  <label for="gioi-tinh">Giới Tính</label>
  <select id="gioi-tinh" name="gioi-tinh" required>
    <option value="nam">Nam</option>
    <option value="nam">Nữ</option>
  </select>

  <button type="submit">Cập Nhật</button>
</form>

</body>
</html>
