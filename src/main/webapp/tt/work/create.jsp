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
              <li><a href="/admin/salar"><i class="ri-arrow-drop-right-fill"></i>Danh sách bảng lương nhân viên</a></li>
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


        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
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