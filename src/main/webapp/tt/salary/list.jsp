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
                    <h1>Danh sách bảng lương</h1>
                </div>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        margin: 20px;
                    }
                    table {
                        width: 100%;
                        border-collapse: collapse;
                        margin-top: 20px;
                    }
                    table th, table td {
                        border: 1px solid #ccc;
                        padding: 10px;
                        text-align: center;
                    }
                    table th {
                        background-color: #f2f2f2;
                    }
                    table td {
                        background-color: #f9f9f9;
                    }
                    table tr:hover td {
                        background-color: #e0e0e0;
                    }
                    a.btn {
                        padding: 5px 10px;
                        text-decoration: none;
                        border-radius: 4px;
                    }
                    a.btn-success {
                        background-color: #28a745;
                        color: white;
                    }
                    a.btn-danger {
                        background-color: #dc3545;
                        color: white;
                    }
                    a.btn-primary {
                        background-color: #007bff;
                        color: white;
                    }
                    .mb-3 {
                        margin-bottom: 15px;
                    }
                    .actions {
                        display: flex;
                        justify-content: center;
                        gap: 10px;
                    }
                </style>
                <strong>Tổng số người dùng:</strong> <c:out value="${data.size()}"/>

                <table>
                    <tr>
                        <th>Mã Nhân Viên</th>
                        <th>Họ Tên</th>
                        <th>Tổng Số Giờ Làm</th>
                        <th>Lương Theo Giờ (25,000 VND)</th>
                        <th>Tháng</th>
                        <th>Tổng Lương</th>
                        <th>Hành Động</th>
                    </tr>
                    <c:forEach items="${data}" var="salary">
                        <tr>
                            <td><c:out value="${salary.maNV}"/></td>
                            <td><c:out value="${salary.hoTen}"/></td>
                            <td><c:out value="${salary.tongSoGioLam}"/></td>
                            <td><c:out value="${salary.luongTheoGio}"/></td>
                            <td><c:out value="${salary.thang}"/></td>
                            <td><c:out value="${salary.tongLuong}"/></td>
                            <td class="actions">
                                <a class="btn btn-danger" onclick="return confirm('Bạn có chắc chắn muốn xóa?')"
                                   href="${pageContext.request.contextPath}/admin/salar/delete?maNV=${salary.maNV}">Xóa</a>
                                <a class="btn btn-primary" href="${pageContext.request.contextPath}/admin/salar/update?maNV=${salary.maNV}">Cập nhật</a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>

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
