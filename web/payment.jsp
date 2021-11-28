<%-- 
    Document   : payment
    Created on : Nov 1, 2021, 10:40:14 AM
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
        <link rel="stylesheet" href="css/payment.css">
        <link rel="icon" href="image/NingPhone.png" type="image/x-icon"</> 
        <title>payment</title>
    </head>

    <body>
        <jsp:include page="menu.jsp"></jsp:include>

            <!-- --------------------------payment--------------- -->
            <section id="Slider">
                <div class="payment">
                    <div class="wraptop">
                        <div class="cartTop">
                            <div class="phartCart">
                                <div class="title">Giỏ hàng</div>
                                <div class="circle cartGiohang"><i class="fas fa-cart-plus"></i></div>
                            </div>
                            <div class="phartCart">
                                <div class="title">Địa chỉ giao hàng</div>
                                <div class="circle"><i class="fas fa-map-marker-alt"></i></div>
                            </div>
                            <div class="phartCart">
                                <div class="title">Thanh toán</div>
                                <div class="circle" style="border: 1px solid #0DB7EA; "><i class="fas fa-money-check-alt"></i>
                                </div>
                            </div>
                        </div>
                        <div class="line"></div>
                    </div>
                    <div class="payment-detail">
                        <div class="payment-left">
                            <div class="cachGiaohang">
                                <h5>Phương thức giao hàng</h5>
                                <div>
                                    <input type="radio" id="giaohang" name="cachgiaohang" checked>
                                    <label for="giaohang">Giao hàng chuyển phát nhanh</label>
                                </div>
                            </div>
                            <div class="cachThanhtoan">
                                <h5>Phương thức thanh toán</h5>
                                <div>
                                    <p>Mọi giao dịch đều được bảo mật và mã hóa. Thông tin thẻ tín dụng sẽ khong
                                        bao giờ được lưu lại</p>
                                </div>
                                <div>
                                    <input type="radio" id="onepay" name="cachthanhtoan">
                                    <label for="onepay">Thanh toán bằng thẻ tín dụng Onepay</label>
                                    <div><img src="image/visa.png"></div>
                                </div>
                                <div>
                                    <input type="radio" id="ATM" name="cachthanhtoan">
                                    <label for="ATM">Thanh toán bằng thẻ ATM Onepay</label>
                                    <div><img src="image/1.png"></div>
                                </div>
                                <div>
                                    <input type="radio" id="momo" name="cachthanhtoan">
                                    <label for="momo">Thanh toán bằng Momo</label>
                                    <div><img src="image/momo.png"></div>
                                </div>
                                <div>
                                    <p> <input type="radio" id="tienmat" name="cachthanhtoan">
                                        <label for="tien mặt"> Thu tiền tận nơi</label>

                                </div>
                                <div class="submit-row">
                                    <a href="">Quay lại giỏ hàng</a>
                                    <button><a href="">Hoàn thành</a></button>
                                </div>
                            </div>
                        </div>
                        <div class="payment-right">
                            <div class="code">
                                <div class="code1">
                                    <input type="text" placeholder="Mã giảm giá/ Quà Tặng">
                                    <button> <i class="fas fa-check"></i></button>
                                </div>
                                <div class="code1">
                                    <input type="text" placeholder="Mã cộng tác viên">
                                    <button><i class="fas fa-check"></i></button>
                                </div>
                                <div class="code1">
                                    <select name="" id="">
                                        <option value="">Chọn mã nhân viên thân thiết</option>
                                        <option value="">NKH1</option>
                                        <option value="">NKH2</option>
                                    </select>
                                </div>
                            </div>
                            <div class="payment-hoadon">
                                <table class="tblee">
                                    <tr>
                                        <th>Tên sản phẩm</th>
                                        <th>Giảm giá</th>
                                        <th>Số lượng</th>
                                        <th>Thành tiền</th>
                                    </tr>
                                    <tr>
                                        <td style="width: 200px; word-break: break-all;">Laptop Lenovo IdeaPad Gaming 3 15ARH05 82EY00N3VN</td>
                                        <td style="text-align: center;">- 60 %</td>
                                        <td style="text-align: center;">1</td>
                                        <td style="text-align: center;">396.000đ</td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">Tổng tiền hàng:</td>
                                        <td style="text-align: center;">990.000 <sup>đ</sup></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">Tạm tính:</td>
                                        <td style="text-align: center;">380.000 <sup>đ</sup></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">Giao hàng chuyển phát nhanh:</td>
                                        <td style="text-align: center;">25.000<sup>đ</sup></td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">Tiền thanh toán:</td>
                                        <td style="text-align: center;">421.000 <sup>đ</sup></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-------------------------app-container------------------->
            <section class="app-container">
                <h1>Tải ứng dụng NingPhone</h1>
                <div class="app-google">
                    <a href=""><img src="image/index/appstore.jpg"></a>
                    <a href=""><img src="image/index/googleplay.jpg"></a>
                </div>
                <h1>Nhận bản tin NingPhone</h1>
                <input type="text" placeholder="nhập email của bạn">
            </section>

            <!-------------------------footer----------------------->
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
    <script src="javascript/index.js"></script>

</html>