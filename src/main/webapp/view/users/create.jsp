
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
  </head>
  <body>
  <form action="/admin/users/create" method="post">
    <label for="userId">ID:</label><br>
    <input type="text" id="userId" name="id" placeholder="Nhập ID"><br> <!-- Cho phép nhập ID -->
    <label for="studentId">Mã SV:</label><br>
    <input type="text" id="studentId" name="maSV"><br>
    <label for="middleName">Họ đệm:</label><br>
    <input type="text" id="middleName" name="hoDem"><br>
    <label for="firstName">Tên:</label><br>
    <input type="text" id="firstName" name="ten"><br>
    <label for="address">Địa chỉ:</label><br>
    <input type="text" id="address" name="diaChi"><br>

    <input type="submit" value="Submit">
  </form>
  </body>
</html>
