<%-- 
    Document   : delivery
    Created on : Nov 1, 2021, 10:39:49 AM
    Author     : Long
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://kit.fontawesome.com/1147679ae7.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/delivery.css">
        <link rel="icon" href="image/NingPhone.png" type="image/x-icon"</> 
        <title>delivery</title>
    </head>

    <body>
        <jsp:include page="menu.jsp"></jsp:include>

            <!---------------------------------------deliver-------------------------------->
            <section id="Slider">
                <div class="delivery">
                    <div class="wraptop">
                        <div class="cartTop">
                            <div class="phartCart">
                                <div class="title">Giỏ hàng</div>
                                <div class="circle cartGiohang"><i class="fas fa-cart-plus"></i></div>
                            </div>
                            <div class="phartCart">
                                <div class="title">Địa chỉ giao hàng</div>
                                <div class="circle" style="border: 1px solid #0DB7EA;  ;"><i class="fas fa-map-marker-alt"></i>
                                </div>
                            </div>
                            <div class="phartCart">
                                <div class="title">Thanh toán</div>
                                <div class="circle"><i class="fas fa-money-check-alt"></i></div>
                            </div>
                        </div>
                        <div class="line"></div>
                    </div>
                    <div class="delivery-detail">
                        <div class="deliveryleft">
                            <p>Vui lòng chọn địa chỉ giao hàng</p>
                            <form class="formrq">
                                <div class="title">
                                    <div><a href=""><i class="fas fa-sign-in-alt"></i> Đăng nhập ( nếu bạn đã có tài
                                            khoản của IVY )</a> <br></div>
                                    <div class="luachon">
                                        <input type="radio" name="alos" id="khachle" value="1" checked onclick="setView(this)">
                                        <label for="khachle">Khách lẻ (nếu bạn không muốn lưu lại thông tin) </label> <br>
                                    </div>
                                    <div>
                                        <input type="radio" name="alos" id="dangki" value="2" onclick="setView(this)">
                                        <label for="dangki">Đăng kí (tạo tài khoản với thông tin bên dưới ) </label> <br>
                                    </div>
                                </div>
                                <div class="enter-customer">
                                    <div class="input-item">
                                        <label for="">Họ tên: <span style="color: red;">*</span></label><br>
                                        <input type="text">
                                    </div>
                                    <div class="input-item">
                                        <label for="">Điện thoại: <span style="color: red;">*</span></label><br>
                                        <input type="text">
                                    </div>
                                    <div class="input-item">
                                        <label for="">Tỉnh/TP: <span style="color: red;">*</span></label> <br>
                                        <select class="select1" name="" id="">
                                            <option value="">Chọn Tỉnh/TP</option>
                                            <option value="">Nam Định</option>
                                            <option value="">Thái Bình</option>
                                        </select>
                                    </div>
                                    <div class="input-item">
                                        <label for="">Quận/Huyện: <span style="color: red;">*</span></label> <br>
                                        <select class="select1" name="" id="">
                                            <option value="">Chọn Quận huyện</option>
                                            <option value="">Nam trực</option>
                                            <option value="">Vụ Bản</option>
                                        </select>
                                    </div>
                                    <div class="input-item">
                                        <label for="1">Phường/Xã: <span style="color: red;">*</span></label><br>
                                        <select class="select1" name="" id="1">
                                            <option value="">Chọn phường xã</option>
                                            <option value="">Nam Hùng</option>
                                            <option value="">Bình minh</option>
                                        </select>
                                    </div>
                                    <div class="input-item">
                                        <label for="">Địa chỉ: <span style="color: red;">*</span></label><br>
                                        <input type="text">
                                    </div>
                                </div>
                                <div class="password" style="display: none;">
                                    <div class="pass">
                                        <label for="">Mật khẩu: <span style="color: red;">*</span></label> <br>
                                        <input type="text">
                                    </div>
                                    <div class="pass">
                                        <label for="">Nhập lại mật khẩu: <span style="color: red;">*</span></label> <br>
                                        <input type="text">
                                    </div>
                                </div>
                                <div class="submit-row">
                                    <a href="">Quay lại giỏ hàng</a>
                                    <button><a href="">THANH TOÁN VÀ GIAO HÀNG</a></button>
                                </div>
                            </form>
                        </div>
                        <div class="deliveryright">
                            <table class="table-deal">
                                <tr>
                                    <th>Tên sản phẩm</th>
                                    <th style="text-align: center;"> giảm giá</th>
                                    <th style="text-align: center;"> số lượng</th>
                                    <th style="text-align: center;">Thành tiền</th>
                                </tr>
                                <tr>
                                    <td style="width: 205px; word-break: break-all;">Laptop Lenovo IdeaPad Gaming 3 15ARH05 82EY00N3VN <sup>đ</sup></td>
                                    <td style="text-align: center;">- 60% </td>
                                    <td style="text-align: center;">1</td>
                                    <td style="text-align: center;">390.000 <sup>đ</sup></td>

                                </tr>
                                <tr>
                                    <td colspan="3">Tổng tiền hàng:</td>
                                    <td style="text-align: center;">990.000 <sup>đ</sup></td>
                                </tr>
                                <tr>
                                    <td colspan="3">Tạm tính:</td>
                                    <td style="text-align: center;">380.000 <sup>đ</sup></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </section>


            <!-------------------------app-container------------------->
            <section class="app-container">
                <h1>Tải ứng dụng IVY moda</h1>
                <div class="app-google">
                    <a href=""><img src="image/index/appstore.jpg"></a>
                    <a href=""><img src="image/index/googleplay.jpg"></a>
                </div>
                <h1>Nhận bản tin IVY moda</h1>
                <input type="text" placeholder="nhập email của bạn">
            </section>

            <!-------------------------footer----------------------->
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
    <script src="javascript/index.js"></script>

</html>