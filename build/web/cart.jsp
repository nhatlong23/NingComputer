<%-- 
    Document   : cart
    Created on : Nov 1, 2021, 10:39:03 AM
    Author     : Long
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://kit.fontawesome.com/1147679ae7.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="css/cart.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/category.css">
        <link rel="icon" href="image/NingPhone.png" type="image/x-icon"</> 
        <title>cart</title>
    </head>

    <body>
        <jsp:include page="menu.jsp"></jsp:include>
            <!-- ------------------------------cart--------------- -->
            <section id="Slider">
                <div class="cart-content">
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
                                <div class="circle"><i class="fas fa-money-check-alt"></i></div>
                            </div>
                        </div>
                        <div class="line"></div>
                    </div>
                    <div class="Cartbot">
                        <div class="rightCart">
                            <table class="table">
                                <thead class="head">
                                    <tr>
                                        <th>Sản Phẩm</th>
                                        <th>Tên sản phẩm</th>
                                        <th>SL</th>
                                        <th>Thành Tiền </th>
                                        <th>Xóa</th>
                                    </tr>
                                </thead>
                                <tbody class="body">
                                <c:forEach items="${list}" var="o">
                                    <tr>
                                        <td><a href=""><img src="${o.image}"></a></td>
                                        <td><a href="">${o.name}</a></td>
                                        <td class="align-middle">
                                            <a href="sub?id=${o.id}"><button class="btnSub">-</button></a>
                                            <strong>${o.amount}</strong>
                                            <a href="cart?id=${o.id}"><button class="btnAdd">+</button></a>
                                        </td>
                                        <td>${o.price} <sup>$</sup></td>
                                        <td><a href="remove?id=${o.id}">X</a></td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <div class="leftCart">
                        <table class="left-table">
                            <tr>
                                <th class="title" colspan="2">Tổng tiền giỏ hàng</th>
                            </tr>
                            <tr class="receipt">
                                <td>Tổng tiền sản phẩm</td>
                                <td>2</td>
                            </tr>
                            <tr class="receipt">
                                <td>Tổng tiền hàng</td>
                                <td>
                                    <p>${total} <sup>$</sup></p>
                                </td>
                            </tr>
                            <tr class="receipt">
                                <td>VAT</td>
                                <td>${vat} <sup>$</sup></td>
                            </tr>
                            <tr class="receipt">
                                <td>Tạm tính</td>
                                <td>${sum} <sup>$</sup></td>
                            </tr>
                        </table>
                        <div class="contact">
                            <p>Bạn sẽ được miễn phí ship hàng khi có hóa đơn thanh toán trên 2.000.000 <sup>đ</sup>
                            </p>
                            <p class="alo">Mua thêm 1.208.000đ để được miễn phí SHIP</p>
                        </div>
                        <div class="button-cart">
                            <a>
                                <button href="categrory">  Tiếp tục mua sắm </button>
                                <button href="delivery.jsp">Thanh Toán</button>
                            </a>
                        </div>
                        <div class="notice">
                            <c:if test="${sessionScope.acc == null}">
                                <p>TÀI KHOẢN IVY</p>
                                <P>Hãy <a href="login.jsp">đăng nhập</a> tài khoản của bạn để tích điểm thành viên</P>
                                </c:if>
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
