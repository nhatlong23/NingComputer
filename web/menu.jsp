<%-- 
    Document   : home
    Created on : Nov 1, 2021, 10:43:02 AM
    Author     : Long
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<header>
    <div class="logo">
        <a href="home"><img src="image/index/nts.png"></a>
    </div>
    <div class="menu">
        
        <c:forEach items="${listC}" var="o">  
            <li><a href="categrory?cid=${o.cid}">${o.cname}</a>
                <ul class="sub-menu">
                    <li><a href="categrory?cid=${o.cid}">${o.cname1}</a></li>
                    <ul>
                        <li><a href="">${o.cname5}</a></li>
                        <li><a href="">${o.cname6}</a></li>
                        <li><a href="">${o.cname7}</a></li>
                    </ul>
                    <li><a href="">${o.cname2}</a></li>
                    <ul>
                        <li><a href="">${o.cname8}</a></li>
                        <li><a href="">${o.cname9}</a></li>
                        <li><a href="">${o.cname10}</a></li>
                    </ul>
                    <li><a href="">${o.cname3}</a></li>
                    <ul>
                        <li><a href="">${o.cname11}</a></li>
                        <li><a href="">${o.cname12}</a></li>
                    </ul>
                    <li><a href="">${o.cname4}</a></li>
                    <ul>
                        <li><a href="">${o.cname13}</a></li>
                        <li><a href="">${o.cname14}</a></li>
                    </ul>
                </ul>
            </li>  
        </c:forEach>
    </div>
    <div class="others">
        <li action="search" method="post" >
            <input name="txt" type="text" placeholder="Tìm kiếm" type="text">
            <a type="submit" href="" class="fas fa-search"></a>
        </li>
        <li><a href="" class="fas fa-paw"></a></li>
        <li><a href="print" class="fas fa-shopping-bag"> </a></li>

        <c:if test="${sessionScope.acc == null}">
            <li><a href="login.jsp" class="fas fa-user"></a></li>
            </c:if>

        <c:if test="${sessionScope.acc.isAdmin == 1}">
            <li><a href="Manager" class="fas fa-address-book"></a></li>
            </c:if>

        <c:if test="${sessionScope.acc != null}">
            <li><a href="logout" class="fas fa-sign-out-alt"></a></li>
            </c:if>
        <div class="angle-down">
            <li class="left-li"><a href="#"><i class="fas fa-angle-down"></i></a>
                <ul class="muc-con">
                    <c:if test="${sessionScope.acc != null}">
                        <li><a href="">${sessionScope.acc.user}</a></li>
                        </c:if>
                </ul>
            </li>
        </div>
    </div>
</header>