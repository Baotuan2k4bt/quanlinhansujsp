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
                            <li><a href="tt/salary/create.jsp"><i class="ri-arrow-drop-right-fill"></i>Bảng tính lương</a></li>
                            <li><a href="/admin/saler"><i class="ri-arrow-drop-right-fill"></i>Danh sách bảng lương nhân viên</a></li>
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
                    <h1>Danh sách phòng Ban</h1>
                </div>
                <style>
                    table {
                        border-collapse: collapse;
                        width: 100%;
                    }
                    table, th, td {
                        border: 1px solid black;
                    }
                    th, td {
                        padding: 8px;
                        text-align: left;
                    }
                    th {
                        background-color: #f2f2f2;
                    }
                    /* CSS cho các nút */
                    .btn {
                        display: inline-block;
                        padding: 8px 12px;
                        font-size: 14px;
                        color: white;
                        text-align: center;
                        text-decoration: none;
                        border-radius: 4px;
                        margin-right: 5px;
                        transition: background-color 0.3s ease;
                    }

                    .btn-add {
                        background-color: #28a745; /* Màu xanh lá cho nút Thêm */
                    }

                    .btn-edit {
                        background-color: #007bff; /* Màu xanh lam cho nút Sửa */
                    }

                    .btn-delete {
                        background-color: #dc3545; /* Màu đỏ cho nút Xóa */
                    }

                    .btn:hover {
                        opacity: 0.8; /* Hiệu ứng khi hover */
                    }

                    .btn-delete:hover {
                        background-color: #c82333; /* Màu đậm hơn cho nút Xóa khi hover */
                    }

                    .btn-edit:hover {
                        background-color: #0056b3; /* Màu đậm hơn cho nút Sửa khi hover */
                    }

                    .btn-add:hover {
                        background-color: #218838; /* Màu đậm hơn cho nút Thêm khi hover */
                    }
                </style>

                <div>
                    <table>
                        <tr>
                            <th>Mã Phòng Ban</th>
                            <th>Tên Phòng Ban</th>
                            <th>Mô Tả</th>
                            <th>Hành Động</th>
                        </tr>
                        <c:forEach items="${data}" var="department">
                            <tr>
                                <td><c:out value="${department.maPhongBan}"/></td>
                                <td><c:out value="${department.tenPhongBan}"/></td>
                                <td><c:out value="${department.moTa}"/></td>
                                <td>
                                    <a class="btn btn-delete" onclick="return confirm('Are you sure ?')" href="${pageContext.request.contextPath}/admin/department/delete?maPhongBan=${department.maPhongBan}">Delete</a>
                                    <a class="btn btn-edit" href="${pageContext.request.contextPath}/admin/department/update?maPhongBan=${department.maPhongBan}">Update</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div></div>

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
