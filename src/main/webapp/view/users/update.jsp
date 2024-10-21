
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>

</head>
<body>
<form action="/admin/users/update?id=<c:out value="${user.id}"/>" method="post">
  <label for="studentId">Mã SV:</label><br>
  <input type="text" value="<c:out value="${user.maSV}"/>" id="studentId" name="maSV"><br>

  <label for="middleName">Họ đệm:</label><br>
  <input type="text" value="<c:out value="${user.hoDem}"/>" id="middleName" name="hoDem"><br>

  <label for="firstName">Tên:</label><br>
  <input type="text" value="<c:out value="${user.ten}"/>" id="firstName" name="ten"><br>

  <label for="address">Địa chỉ:</label><br>
  <input type="text" value="<c:out value="${user.diaChi}"/>" id="address" name="diaChi"><br>

  <input type="submit" value="Submit">
</form>
</body>
</html>
