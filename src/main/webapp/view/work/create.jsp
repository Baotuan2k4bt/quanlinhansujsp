<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Thêm Ca Làm Việc</title>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
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
  <h2>Thêm Ca Làm Việc</h2>
  <form action="/admin/work/create" method="post">
    <div class="mb-3">
      <label for="maNV">Mã Nhân viên</label>
      <input type="text" id="maNV" name="maNV" class="form-control" placeholder="Nhập mã nhân viên" required />
    </div>

    <div class="mb-3">
      <label for="maCa">Mã ca:</label>
      <input type="text" id="maCa" name="maCa" class="form-control" placeholder="Nhập mã ca" required />
    </div>

    <div class="mb-3">
      <label for="ngayDangKy">Ngày đăng ký:</label>
      <input type="date" id="ngayDangKy" name="ngayDangKy" class="form-control" required />
    </div>

    <div class="mb-3">
      <label for="trangThai">Trạng thái:</label>
      <input type="text" id="trangThai" name="trangThai" class="form-control" placeholder="Nhập trạng thái" required />
    </div>

    <button type="submit">Thêm Ca</button>
  </form>
  <div class="footer">
    <p>&copy; 2024 Bản quyền thuộc về bạn</p>
  </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
