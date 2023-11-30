<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>${title }</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
    <link rel='stylesheet' type='text/css' media='screen'
       href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css'>
    <link rel='stylesheet' type='text/css' media='screen' href='${classpath }/frontend/css/home.css'>
</head>

<body>
  
	<jsp:include page="/WEB-INF/views/frontend/layout/header.jsp"></jsp:include>
    <nav class="nav">
       <a href="${classpath }/home"> <img src="${classpath }/frontend/images/home/logo_left.png" alt=""  /></a>
        <div class="tab_nav">
            <ul class="menu_main">
                <li>
                    <a href="${classpath }/category">Mens</a>
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
                    <a href="">Womens</a>
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
                    <a href="">The Brand</a>
                </li>
                <li>
                    <a href="">Local Stores</a>
                </li>
                <li>
                    <a href="">Look Book</a>
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
        <div class="main_top">
            <div class="menu_top">
                <ul>
                    <li>
                        <a href="">POPULAR</a>
                    </li>
                    <li>
                        <a href="">NEW ARRIVALS</a>
                    </li>
                    <li>
                        <a href="">BEST SELLERS</a>
                    </li>
                    <li>
                        <a href="">SPECIAL OFFERS</a>
                    </li>
                    <li>
                        <a href="">COOMING SOON</a>
                    </li>
                </ul>
            </div>

            <div class="products">
                <div class="product_left">
                    <div class="product_top">
                        <!--start-->
                        <div class="product">
                            <div class="info">
                                <a href="${classpath}/product_view">
                                    <img src="${classpath }/frontend/images/home/Item_1.png" width="100%" />
                                </a>
                                <div class="desc">
                                    <h2>
                                        <a href="${classpath}/product_view">Sportswear</a>
                                    </h2>
                                    <div>
                                        Black shirt, long sleeves, cool material, fashion
                                    </div>
                                    <div class="price">
                                        400.000đ
                                    </div>
                                    <div class="button">
                                        <button type="button">Buy</button>
                                        <a href=""> <i class="fa-solid fa-cart-shopping"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--end-->
                        <!--start-->
                        <div class="product">
                            <div class="info">
                                <a href="">
                                    <img src="${classpath }/frontend/images/home/item_2.png" width="100%" />
                                </a>
                                <div class="desc">
                                    <h2>
                                        <a href="">T-Shirts</a>
                                    </h2>
                                    <div>
                                        White T-shirt, short sleeves, cool material, fashion
                                    </div>
                                    <div class="price">
                                        500.000đ
                                    </div>
                                    <div class="button">
                                        <button type="button">Buy</button>
                                        <a href=""> <i class="fa-solid fa-cart-shopping"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--end-->
                    </div>

                    <div class="product_bot">
                        <div class="product_1">
                            <div class="info">
                                <a href="">
                                    <img src="${classpath }/frontend/images/home/item_3.png" width="100%" />
                                </a>
                                <div class="desc">
                                    <h2>
                                        <a href="">Sportswear</a>
                                    </h2>
                                    <div>
                                        Blue shirt, long sleeves, cool material, fashion
                                    </div>
                                    <div class="price">
                                        450.000đ
                                    </div>
                                    <div class="button">
                                        <button type="button">Buy</button>
                                        <a href=""> <i class="fa-solid fa-cart-shopping"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="product_right">
                    <div class="product_bot">
                        <div class="product_1">
                            <div class="info">
                                <a href="">
                                    <img src="${classpath }/frontend/images/home/item_4.png" width="100%" />
                                </a>
                                <div class="desc">
                                    <h2>
                                        <a href=""> Sweatshirts</a>
                                    </h2>
                                    <div>
                                        Black shirt, long sleeves, 100% cotton, fashion
                                    </div>
                                    <div class="price">
                                        690.000đ
                                    </div>
                                    <div class="button">
                                        <button type="button">Buy</button>
                                        <a href=""> <i class="fa-solid fa-cart-shopping"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="product_top">
                        <!--start-->
                        <div class="product">
                            <div class="info">
                                <a href="">
                                    <img src="${classpath }/frontend/images/home/Item_61.png" width="100%" />
                                </a>
                                <div class="desc">
                                    <h2>
                                        <a href="">T-Shirts Avenue</a>
                                    </h2>
                                    <div>
                                        Chocolate T-shirt, 100% cotton, cool material, fashion
                                    </div>
                                    <div class="price">
                                        350.000đ
                                    </div>
                                    <div class="button">
                                        <button type="button">Buy</button>
                                        <a href=""> <i class="fa-solid fa-cart-shopping"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--end-->
                        <!--start-->
                        <div class="product">
                            <div class="info">
                                <a href="">
                                    <img src="${classpath }/frontend/images/home/item_6.png" width="100%" />
                                </a>
                                <div class="desc">
                                    <h2>
                                        <a href="">T-Shirts</a>
                                    </h2>
                                    <div>
                                        Black T-shirt, short sleeves, cool material, fashion
                                    </div>
                                    <div class="price">
                                        500.000đ
                                    </div>
                                    <div class="button">
                                        <button type="button">Buy</button>
                                        <a href=""> <i class="fa-solid fa-cart-shopping"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--end-->
                    </div>


                </div>
            </div>
        </div>

        <div class="main_bot">
            <div class="row">
                <div class="col" style="background-image: url('${classpath }/frontend/images/home/item_bot_1.png');">
                    <div class="content">
                        <div class="title"><b>MEN'S </b><br />
                            LOOKBOOK
                        </div>
                        <div>
                            Lorem ipsum dolor sit amet eras facilisis <br />
                            consectetur adipiscing elit lor, integer lorem <br />
                            consecteur dignissim laciniqui. <br />
                            Elenmentum metus facilisis ut phasellu.
                        </div>

                        <div class="button_view">
                            <button type="button">VIEW NOW</button>
                        </div>
                    </div>

                </div>

                <div class="col" style="background-image: url('${classpath }/frontend/images/home/item_bot_2.png');">
                    <div class="content">
                        <div class="title"><b>WOMEN'S </b><br />
                            LOOKBOOK
                        </div>
                        <div>
                            Lorem ipsum dolor sit amet eras facilisis <br />
                            consectetur adipiscing elit lor, integer lorem <br />
                            consecteur dignissim laciniqui. <br />
                            Elenmentum metus facilisis ut phasellu.
                        </div>

                        <div class="button_view">
                            <button type="button">VIEW NOW</button>
                        </div>
                    </div>

                </div>

                <div class="col" style="background-image: url('${classpath }/frontend/images/home/item_bot_3.png');">
                    <div class="content">
                        <div class="title"><b>YOUR </b><br />
                            LOOKBOOK
                        </div>
                        <div>
                            Lorem ipsum dolor sit amet eras facilisis <br />
                            consectetur adipiscing elit lor, integer lorem <br />
                            consecteur dignissim laciniqui. <br />
                            Elenmentum metus facilisis ut phasellu.
                        </div>

                        <div class="button_view">
                            <button type="button">VIEW NOW</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>

   <jsp:include page="/WEB-INF/views/frontend/layout/footer.jsp"></jsp:include>
</body>

</html>