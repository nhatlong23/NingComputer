<%-- 
    Document   : product
    Created on : Nov 1, 2021, 10:40:34 AM
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
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/product.css">
        <link rel="stylesheet" href="css/category.css">
        <link rel="icon" href="image/NingPhone.png" type="image/x-icon"</> 
        <title>product</title>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
            <!-- ------------------------------product----------------------- -->
            <section id="Slider">
                <section class="productinfo">
                    <div class=dieuhuong>
                        <a href="home">Trang chủ</a><span> &rarr;</span><a href="">Laptop Gaming</a>
                    </div>
                    <div class="box">                  
                        <div class="left">
                            <div class="mainImage">
                                <img src="${detall.image}">
                        </div>
                        <div class="detailImage">
                            <img src="${detall.image}">
                            <img src="${detall.image1}">
                            <img src="${detall.image2}">
                            <img src="${detall.image3}">
                        </div>
                    </div>
                    <div class="right">
                        <div class="name">
                            ${detall.name}
                        </div>
                        <div class="detail">
                            ${detall.title}
                        </div>
                        <div class="price">
                            ${detall.price} <sup>$</sup></p>
                        </div>

                        <div class="quantity">
                            <p><b name="f" action="" method="post">Số lượng: </b></p>
                            <input type="number" name="num" value="1">
                        </div>
                        <div class="buyButton">
                            <button>
                                <i class="fas fa-shopping-cart"> </i><a href="cart?id=${detall.id}">MUA HÀNG</a>
                            </button>
                        </div>
                        <div class="findButton">
                            <button>TÌM TẠI CỬA HÀNG</button>

                        </div>
                        <div class="contact">
                            <div><a href=""><i class="fas fa-phone-alt">Phone</i></a></div>
                            <div><a href=""><i class="fas fa-comments"> Chat</i></a></div>
                            <div><b><a href="">Mail</a></b></div>
                        </div>
                        <div><a href=""><img src="image/product/qrcode2.png"></a></div>
                        <div class="right-product-bottom">
                            <div class="line"></div>
                            <div class="angle-down"><button><i class="fas fa-angle-down"></i></button> </div>
                        </div>
                        <div class="description">
                            <ul class="ListProduct">
                                <li>Chi tiết</li>
                                <li>Cấu Hình </li>
                                <li>Thông số</li>
                            </ul>
                            <div class="tab-content">
                                <div class="d1 bol">
                                    <p>${detall.description}</p>
                                </div>
                                <div class="d1">
                                    <div class="table">
                                        <table>
                                            <h3>Thông số kĩ thuật:</h3>
                                            <tr>
                                                <td>CPU</td>
                                                <td>Intel Core i5-10300H 2.5GHz up to 4.5GHz 8MB</td>
                                            </tr>
                                            <tr>
                                                <td>RAM</td>
                                                <td>8GB DDR4 2933MHz (2 khe ram , nâng cấp tối đa 32GB RAM)</td>
                                            </tr>
                                            <tr>
                                                <td>Ổ cứng</td>
                                                <td>512GB SSD M.2 PCIE G3X2, 1 khe  SATA3 2.5"</td>
                                            </tr>
                                            <tr>
                                                <td>Card đồ họa</td>
                                                <td>NVIDIA GeForce GTX 1650 4GB GDDR6 + Đồ họa Intel® UHD</td>
                                            </tr>
                                            <tr>
                                                <td>Cổng giao tiếp</td>
                                                <td>2x Cổng USB 3.1 (Gen 1)
                                                    1x Cổng USB2.0
                                                    1x Cổng RJ-45 LAN
                                                    1x HDMI 2.0B
                                                    1x giắc âm thanh 3.5 mm combo micro</td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                                <div class="d1">
                                    <p>Màn hình Super AMOLED, 10.5″.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="outbox">
                    <div class="product-title">
                        <span>Màu khác</span>
                        <span>Mua cùng với</span>
                    </div>
                    <div class="product-image2">
                        <c:forEach items="${listL}" var="o">
                            <div class="product-detail-product">
                                <a href=""><img src="${o.image}"></a>
                                <div class="nameProduct"><a href="">
                                        <h1>${o.name}</h1>
                                    </a></div>
                                <div class="price">
                                    <p>${o.price} <sup>$</sup></p>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </section>
        </section>


        <!-- ------------------------app-container---------------- -->
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
