<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/remixicon@4.3.0/fonts/remixicon.css" rel="stylesheet"/>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">

  <title>admin</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/tt/css.css">
</head>

<body>

<section class="admin">
  <div class="row-grid">
    <div class="admin-sidebar">
      <div class="admin-sidebar-top">
        <img src="https://cdn.vietnambiz.vn/2019/10/3/color-silhouette-cartoon-facade-shop-store-vector-14711058-1570007843495391141359-1570076859193969194096-15700769046292030065819-1570076927728377843390.png" width="50%" height="70" alt="Profile">
      </div>
      <div class="admin-sidebar-content">
        <ul>
          <li><a href=""><i class="ri-dashboard-line"></i> Dashboard</a></li>
          <li><a href=""><i class="ri-group-fill"></i>Quản lí nhân sự<i class="ri-arrow-left-s-fill"></i></a>
            <ul class="sub-menu">
              <li><a href="/admin/admins"><i class="ri-arrow-drop-right-fill"></i>Danh sách nhân viên</a></li>
              <li><a href="/tt/admin/create.jsp"><i class="ri-arrow-drop-right-fill"></i>Tạo danh sách nhân viên</a></li>
              <li><a href="/admin/department"><i class="ri-arrow-drop-right-fill"></i>Danh sách phòng ban</a></li>
            </ul>
          </li>
          <li><a href=""><i class="ri-calendar-check-fill"></i> Thiết lập lịch làm việc<i class="ri-arrow-left-s-fill"></i></a>
            <ul class="sub-menu">
              <li><a href="/tt/work/create.jsp"><i class="ri-arrow-drop-right-fill"></i>Tạo danh sách đăng kí ca làm việc</a></li>
              <li><a href="/admin/work"><i class="ri-arrow-drop-right-fill"></i>Danh sách ca làm việc</a></li>
              <li><a href="/admin/att"><i class="ri-arrow-drop-right-fill"></i>Bảng chấm công làm việc</a></li>
              <li><a href="/tt/attendance/create.jsp"><i class="ri-arrow-drop-right-fill"></i>Tạo bảng chấm công </a></li>

            </ul>
          </li>
          <li><a href=""><i class="ri-wallet-3-line"></i> Quản lí lương<i class="ri-arrow-left-s-fill"></i></a>
            <ul class="sub-menu">
              <li><a href="/tt/salary/create.jsp"><i class="ri-arrow-drop-right-fill"></i>Bảng tính lương</a></li>
              <li><a href="/admin/salar/"><i class="ri-arrow-drop-right-fill"></i>Danh sách bảng lương nhân viên</a></li>
            </ul>
          </li>
          <li><a href=""><i class="ri-folder-chart-line"></i> Báo cáo & phân tích<i class="ri-arrow-left-s-fill"></i></a>

          </li>
          <li><a href=""><i class="ri-verified-badge-line"></i> Quản lí đơn từ<i class="ri-arrow-left-s-fill"></i></a>
          </li>
          <li><a href=""><i class="ri-star-line"></i> Khen thưởng & kỉ luật<i class="ri-arrow-left-s-fill"></i></a>

          <li><a href=""><i class="ri-user-star-line"></i> Tài khoản<i class="ri-arrow-left-s-fill"></i></a>
            <ul class="sub-menu">
              <li><a href=""><i class="ri-arrow-drop-right-fill"></i>Đăng xuất</a></li>
            </ul>
          </li>
        </ul>
      </div>
    </div>
    <div class="admin-content">
      <div class="admin-content-top">
        <div class="admin-content-top-left">
          <ul>
            <li>
              <i class="ri-search-line"></i>
            </li>
            <li>  <i class="ri-drag-move-line"></i></li>
          </ul>
        </div>
        <div class="admin-content-top-right">
          <ul>
            <li>
              <i class="ri-notification-3-line"number="3"> </i > </li>
            <li><i class="ri-chat-3-line " number="5"></i></li>
          </ul>
        </div>
      </div>
      <div class="admin-content-main">
        <div class="admin-content-main-title">
          <h1>Dashboard</h1>
        </div>
        <style>
          body {
            font-family: Arial, sans-serif;
            background-color: #f0f2f5;
            margin: 0;
            padding: 20px;
          }

          .container {
            max-width: 600px;
            margin: 50px auto;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
          }

          h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333333;
          }

          .form-group {
            margin-bottom: 20px;
          }

          .form-group label {
            font-size: 1.1rem;
            color: #555555;
            margin-bottom: 5px;
            display: block;
          }

          .form-control {
            width: 100%;
            padding: 10px;
            font-size: 1rem;
            border: 1px solid #ced4da;
            border-radius: 5px;
            background-color: #f9f9f9;
            transition: background-color 0.3s ease;
          }

          .form-control:focus {
            background-color: #ffffff;
            border-color: #007bff;
            outline: none;
          }

          .row {
            display: flex;
            gap: 10px;
          }

          .row .col-md-6 {
            flex: 1;
          }

          .btn {
            display: inline-block;
            width: 100%;
            padding: 12px;
            font-size: 1.1rem;
            color: white;
            background-color: #007bff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
          }

          .btn:hover {
            background-color: #0056b3;
          }

          .form-group small {
            font-size: 0.9rem;
            color: #777777;
          }

          .form-description {
            text-align: center;
            font-size: 0.9rem;
            color: #666666;
            margin-bottom: 10px;
          }

          .shadow-sm {
            box-shadow: 0 0.125rem 0.25rem rgba(0, 0, 0, 0.075);
          }
        </style>
        <div class="container shadow-sm">
          <h2>Bảng  Chấm Công</h2>
          <div class="form-description">Vui lòng nhập thông tin chấm công của nhân viên</div>
          <form action="/admin/att/create" method="post" class="p-4 rounded">
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

            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label for="gioVao">Giờ vào:</label>
                  <input type="time" id="gioVao" name="gioVao" class="form-control" required>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <label for="gioRa">Giờ ra:</label>
                  <input type="time" id="gioRa" name="gioRa" class="form-control" required>
                </div>
              </div>
            </div>

            <button type="submit" class="btn btn-primary">Thêm Chấm Công</button>
          </form>
        </div>
      </div>
    </div>
  </div>
</section>
</body>
</html>
<script>
  const menuLi = document.querySelectorAll('.admin-sidebar-content > ul >li >a')
  for (let index = 0; index < menuLi.length; index++) {
    menuLi[index].addEventListener('click', (e) => {
      e.preventDefault();
      menuLi[index].parentNode.querySelector('ul').classList.toggle('active');
//       console.log(menuLi[index].parentNode.querySelector('ul'))
      document.querySelector('.admin-sidebar-content > ul').querySelector('li.active').classList.remove('active');

    });
  }
  function toggleMenu() {
    let navigation = document.querySelector('.admin-sidebar');
    let toggle = document.querySelector('.toggle');
    navigation.classList.toggle('active');
    toggle.classList.toggle('active');
  }

</script>

</body>
</html>
