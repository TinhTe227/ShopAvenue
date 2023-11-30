<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
        <!-- directive của JSTL -->
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <header>
        <div class="top">
            <div class="sign_in">
                <a href="${classpath }/signin">Sign In</a>
            </div>
            <div class="register">
            <c:choose>
            	<c:when test="${isLogined }">
            		<a href="${classpath }/logout"> <i style="font-size: 18px;" class="fa-regular fa-user"></i></a>
            	</c:when>
            
            	<c:otherwise>
            		<a href="${classpath }/signin"> <i style="font-size: 18px;" class="fa-regular fa-user"></i></a>
            	</c:otherwise>
            </c:choose>
            </div>
            <div class="cart active">
                <a href="${classpath }/cart">
                    <span class="number" id="totalCartProductsId">${totalCartProducts }</span>
                    <i class="fa-solid fa-cart-shopping"></i>
                    <span>Giỏ hàng</span>
                </a>
            </div>
             <div class="cus_name">
             <c:choose>
             	<c:when test="${isLogined }">
             		 <span>Hi, ${loginedUser.name } </span>
             	</c:when>
             	<c:otherwise>
             		<span> </span>
             	</c:otherwise>
             </c:choose>
               
            </div>
        </div>
    </header>