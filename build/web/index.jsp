<%-- 
    Document   : index
    Created on : Oct 31, 2021, 11:58:30 PM
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
        <title>index</title>
    </head>

    <body>
        <jsp:include page="menu.jsp"></jsp:include>
            <section id="Slider">
                <div class="aspect-ratio-169">
                    <img src="image/index/1.png">
                    <img src="image/index/2.png">
                    <img src="image/index/3.png">
                    <img src="image/index/4.png">
                    <img src="image/index/5.png">
                </div>
                <div class="dot-container">
                    <div class="dot active"></div>
                    <div class="dot"></div>
                    <div class="dot"></div>
                    <div class="dot"></div>
                    <div class="dot"></div>
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
        <script src="javascript/index.js"></script>
    </body>
    
</html>