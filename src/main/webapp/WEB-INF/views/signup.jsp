<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<!-- directive của JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>${title }</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
   <jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
   <link rel='stylesheet' type='text/css' media='screen'
       href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css'>
   <link rel='stylesheet' type='text/css' media='screen' href='${classpath}/frontend/css/signup.css'>
   
</head>

<body>
    <!-- HEADER -->
	<jsp:include page="/WEB-INF/views/frontend/layout/header.jsp"></jsp:include>
	
    <nav class="nav">
      <a href="${classpath }/home">  <img src="${classpath}/frontend/images/Sign_up/logo_left.png" alt="" /></a>
        <div class="tab_nav">
            <ul class="menu_main">
                <li>
                    <a href="${classpath }/category">MENS</a>
                    <div class="sub_menu">
                        <ul>
                            <li>
                                <h3>CASUALS</h3>
                            </li>
                            <li>
                                <a href="">Jackets</a>
                            </li>
                            <li>
                                <a href="">Hoodies & Sweatshirts</a>
                            </li>
                            <li>
                                <a href="">Polo Shirts</a>
                            </li>
                            <li>
                                <a href="">Sportswear</a>
                            </li>
                            <li>
                                <a href="">Trousers & Chinos</a>
                            </li>
                            <li>
                                <a href="">T-Shirts</a>
                            </li>
                        </ul>
                        <div class="sale_off">
                            <h1>AUTUMN SALE! </h1>
                        </div>
                    </div>
                </li>
                <li>
                    <a href="${classpath }/category">WOMENS</a>
                    <div class="sub_menu">
                        <ul>
                            <li>
                                <h3>CASUALS</h3>
                            </li>
                            <li>
                                <a href="">Jackets</a>
                            </li>
                            <li>
                                <a href="">Hoodies & Sweatshirts</a>
                            </li>
                            <li>
                                <a href="">Polo Shirts</a>
                            </li>
                            <li>
                                <a href="">Sportswear</a>
                            </li>
                            <li>
                                <a href="">Trousers & Chinos</a>
                            </li>
                            <li>
                                <a href="">T-Shirts</a>
                            </li>
                        </ul>
                        <div class="sale_off">
                            <h1>AUTUMN SALE! </h1>
                        </div>
                    </div>
                </li>
                <li>
                    <a href="">THE BRAND</a>
                </li>
                <li>
                    <a href="">LOCAL STORES</a>
                </li>
                <li>
                    <a href="">LOOK BOOK</a>
                </li>
                <li>
                    <form class="form_search" action="" method="GET">
                        <input type="text" name="keyword" placeholder="Search.." />
                        <button type="submit">
                            <i class="fa-solid fa-magnifying-glass"></i>
                        </button>
                    </form>
                </li>
            </ul>
        </div>
    </nav>

    <main>
        <img src="${classpath}/frontend/images/Sign_up/backgr.png" width="100%" alt="" />
        <div class="form">
            <div class="form_register">

                <h3 class="title" style="color: #575153;">REGISTER</h3>

                <form action="${classpath }/register" method="post">
                    <div class="row">
                        <input type="text" id="username" name="username" placeholder=" Your username.." required />
                    </div>
                    <div class="row">
                        <input type="text" id="name" name="name" placeholder=" Your name..." required />
                    </div>
                    <div class="row">
                        <input type="password" id="password" name = "password"
                            placeholder=" Your password.."  />
                    </div>
                    <div class="row">
                        <input type="password" id="retypepassword" name = "retypepassword"
                            placeholder=" Confirm password.."  />
                    </div>
                    <div class="row">
                        <input type="email" id="email" name = "email"
                            placeholder=" your email.."  />
                    </div>
                    <div class="row">
                        <input type="text" id="mobile" name = "mobile"
                            placeholder=" your mobile.."  />
                    </div>
                    <div class="checkbox ">
                        <input type="checkbox" name="checkbox" class="box" />
                        <p style="font-size: 15px;">Sign up for exclusive updates, discounts, new arrivals, contests,
                            and more!</p>
                    </div>
                    <div class="row b2">
                        <button type="submit">CREATE ACCOUNT</button>
                    </div>
                </form>
            </div>
        </div>
    </main>

   <!-- FOOTER -->
   <jsp:include page="/WEB-INF/views/frontend/layout/footer.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/frontend/layout/js.jsp"></jsp:include>
</body>

</html>