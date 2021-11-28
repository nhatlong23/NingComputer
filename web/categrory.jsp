<%-- 
    Document   : categrory
    Created on : Nov 1, 2021, 10:39:30 AM
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
        <link rel="stylesheet" href="css/category.css">
        <link rel="icon" href="image/NingPhone.png" type="image/x-icon"</> 
        <title>category</title>
    </head>

    <body>
        <jsp:include page="menu.jsp"></jsp:include>
            <section id="Slider">
                <!---------------------- category ------------------->
                <section class="container">
                    <div class="directional">
                        <a href="home">Trang chủ</a><span> &rarr;</span><a href="">Laptop Gaming</a>
                    </div>
                    <div class="category">
                        <div class="category-left">
                            <ul class="muc">
                            <c:forEach items="${listC}" var="o">
                                <li class="left-li"><a href="#">${o.cname}</a>
                                        <ul class="muc-con">
                                            <li><a href="">${o.cname1}</a></li>
                                            <li><a href="">${o.cname2}</a></li>
                                            <li><a href="">${o.cname3}</a></li>
                                            <li><a href="">${o.cname4}</a></li>
                                        </ul>
                                </li>   
                            </c:forEach>
                        </ul>
                    </div>
                    <div class="category-right">
                        <div class="title">
                            <h1>Laptop Gaming</h1>
                            <div>
                                <button class="butFilter">Bộ lọc</button>
                            </div>
                            <div>
                                <select class="select1" name="" id="">
                                    <option value="">Sắp xếp</option>
                                    <option value="">Giá:từ cao đến thấp</option>
                                    <option value="">Giá: từ thấp đến cao</option>
                                </select>
                            </div>
                        </div>
                        <div class="Product-content">
                                <c:forEach items="${listP}" var="o">
                                <div class="product-detail">
                                    <div class="card">
                                        <a href="">
                                            <img src="${o.image}" " alt="Card image cap">
                                        </a>
                                        <div class="card-body">
                                            <h4 class="card-name">
                                                <a href="detall?pid=${o.id}">
                                                    ${o.name}
                                                </a>    
                                            </h4>
                                            <div class="card-price">
                                                <p>${o.price}<sup>$</sup></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                        <div class="category-right-bottom">
                            <div class="Number-product">
                                <p>Hiển thị <a href=""><b>2</b></a> <span>|</span> <a href=""><b>4</b></a> sản phẩm
                                </p>
                            </div>
                            <div class="Number-page">
                                <span>&#171;</span> <span><a href="">1</a><a href="">2</a><a href="">3</a><a
                                        href="">4</a><a href="">5</a></span> <span>&#187;</span><span><a href="">Trang
                                        cuối</a></span>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </section>
        <!-------------------------footer----------------------->
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
    <script src="javascript/index.js"></script>

</html>