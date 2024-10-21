
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thêm Nhân Viên</title>
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
                                <li><a href="/tt/admin/create"><i class="ri-arrow-drop-right-fill"></i>Tạo danh sách nhân viên</a></li>
                                <li><a href=""><i class="ri-arrow-drop-right-fill"></i>Tạo tài khoản nhân viên</a></li>
                            </ul>
                        </li>


                        <li><a href=""><i class="ri-calendar-check-fill"></i> Thiết lập lịch làm việc<i class="ri-arrow-left-s-fill"></i></a>
                            <ul class="sub-menu">
                                <li><a href="/admin/work"><i class="ri-arrow-drop-right-fill"></i>Tạo danh sách đăng kí ca làm việc</a></li>

                                <li><a href=""><i class="ri-arrow-drop-right-fill"></i>Danh sách ca làm việc</a></li>
                                <li><a href=""><i class="ri-arrow-drop-right-fill"></i>Bảng chấm công làm việc</a></li>
                            </ul>
                        </li>
                        <li><a href=""><i class="ri-wallet-3-line"></i> Quản lí lương<i class="ri-arrow-left-s-fill"></i></a>
                            <ul class="sub-menu">
                                <li><a href=""><i class="ri-arrow-drop-right-fill"></i>Bảng tính lương</a></li>
                                <li><a href=""><i class="ri-arrow-drop-right-fill"></i>Danh sách bảng lương nhân viên</a></li>
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
                    <div class="admin-content-main-content">

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
</head>
<body>

<div class="container">
    <h2>Thêm Nhân Viên Mới</h2>
    <form action="/admin/admins/create" method="post">
        <label for="ma-nhan-vien">Mã Nhân viên</label>
        <input type="text" id="ma-nhan-vien" name="ma-nhan-vien" placeholder="Nhập mã nhân viên" required>

        <label for="ho-va-ten">Họ và Tên</label>
        <input type="text" id="ho-va-ten" name="ho-va-ten" placeholder="Nhập họ và tên" required>

        <label for="ngay-sinh">Ngày sinh</label>
        <input type="date" id="ngay-sinh" name="ngay-sinh" required>

        <label for="chuc-vu">Chức vụ</label>
        <input type="text" id="chuc-vu" name="chuc-vu" placeholder="Nhập chức vụ" required>

        <label for="phong-ban">Mã Phòng Ban</label>
        <input type="text" id="phong-ban" name="phong-ban" placeholder="Nhập mã phòng ban" required>

        <label for="trang-thai">Trạng thái</label>
        <input type="text" id="trang-thai" name="trang-thai" placeholder="Nhập trạng thái (Đang làm việc, Nghỉ phép, ...)" required>

        <label for="email">Email</label>
        <input type="email" id="email" name="email" placeholder="Nhập email" required>

        <label for="phone">Số điện thoại</label>
        <input type="tel" id="phone" name="phone" placeholder="Nhập số điện thoại" required>

        <label for="gioi-tinh">Giới Tính</label>
        <select id="gioi-tinh" name="gioi-tinh">
            <option value="nam">Nam</option>
            <option value="nu">Nữ</option>
            <option value="khac">Khác</option>
        </select>

        <button type="submit">Thêm Nhân Viên</button>
    </form>
</div>

</body>
</html>
