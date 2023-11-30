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
  	<jsp:include page="/WEB-INF/views/frontend/layout/css.jsp"></jsp:include>
  	
   
</head>

<body>
   <jsp:include page="/WEB-INF/views/frontend/layout/header.jsp"></jsp:include>

    <nav>
       <a href="${classpath }/home"><img src="${classpath }/frontend/images/Sign_up/logo_left.png" alt="" /></a>
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
    <div class="container">
        <main>
            <div class="menu_left">
                <div class="menu">
                    <div class="title">
                        Category
                    </div>
                    <ul>
                        <li>
                            <a href="">MEN'S CLOTHING</a>

                        </li>
                        <li>
                            <a href="">WOMEN'S CLOTHING</a>
                        </li>
                        <li>
                            <a href="">SPORT CLOTHING</a>
                        </li>
                        <li>
                            <a href="">JACKETS & HOODIE</a>
                        </li>
                    </ul>
                </div>

                <div class="menu filter">

                    <div class="title">
                        PRICE FILTER
                    </div>

                    <ul>
                        <li>

                            <input type="checkbox" name="price" id="price_1" />
                            <label for="price_1"> 0-200.000đ</label>
                        </li>
                        <li>

                            <input type="checkbox" name="price" id="price_2" />
                            <label for="price_2">200.000đ-400.000đ</label>
                        </li>
                        <li>
                            <input type="checkbox" name="price" id="price_3" />
                            <label for="price_3">400.000đ-600.000đ</label>
                        </li>
                        <li>

                            <input type="checkbox" name="price" id="price_4" />
                            <label for="price_4">600.000đ-800.000đ</label>
                        </li>
                        <li>

                            <input type="checkbox" name="price" id="price_5" />
                            <label for="price_5">800.000đ-1.000.000đ</label>
                        </li>
                    </ul>

                </div>
            </div>



            <div class="content_right">

                <h1 class="category_name">MEN'S CLOTHING</h1>
                <div class="description_category">

                    <p>
                        Welcome to the world of men's fashion, where style and elegance converge to create a timeless
                        statement. Our collection caters to the discerning modern man, offering an array of
                        sophisticated clothing and accessories that elevate any wardrobe.
                    </p>
                    <p>
                        Casuals are redefined with our selection of impeccably tailored jackets, comfortable yet stylish
                        hoodies, and versatile polo shirts that effortlessly transition from day to night. For the
                        active and sporty gentlemen, our sportswear collection combines performance with fashion,
                        ensuring you look your best while staying at the top of your game.
                    </p>

                    <p>
                        Step into the boardroom or special events with confidence, as our range of formal wear exudes
                        class and refinement. From impeccably cut suits to dapper dress shirts and ties, our formal
                        attire is designed to make a lasting impression.
                    </p>
                    <p>
                        Embrace the art of mix and match with our selection of trousers and chinos, offering endless
                        possibilities to create personalized ensembles that suit your unique personality. Complete your
                        look with our range of carefully curated accessories, from sophisticated leather belts to
                        timeless watches, adding the perfect finishing touch to any outfit.
                    </p>
                </div>
                <div class="view_more">View more</div>
                
              	<form action="${classpath }/category" method="get">
              		<div class="products">
                    <!--start-->
                    <c:forEach items="${products }" var="product">
                    <div class="product">

                        <div class="info">
                            <a href="${classpath }/product_view/${product.id }">
                                <img src="${classpath }/FileUploads/${product.avatar }" ,width="100%" />
                            </a>
                            <div class="desc">

                                <h2>
                                    <a href="${classpath }/product_view/${product.id }">${product.name }</a>
                                </h2>
                                <div>
                                    ${product.shortDescription }
                                </div>
                                <div class="price">
                                   <fmt:formatNumber value="${product.price }" minFractionDigits="0"></fmt:formatNumber>
														<sup>vnđ</sup>
                                </div>
                                <div class="button">
                                    <button type="button">Buy</button>
                                    <a onclick="addToCart(${product.id},1, '${product.name }')">
                                    <i class="fa-solid fa-cart-shopping"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                    
                    <!--end-->
                </div>
              	</form>

                <div class="page_control">
                    <div style="margin-left: 450px;" id="paging"></div>
                </div>
            </div>
        </main>
    </div>
   
   <!-- footer -->
   <jsp:include page="/WEB-INF/views/frontend/layout/footer.jsp"></jsp:include>
   
   <jsp:include page="/WEB-INF/views/frontend/layout/js.jsp"></jsp:include>
  <!-- Add to cart -->
	<script type="text/javascript">
		addToCart = function(_productId, _quantity, _productName) {		
			alert("Thêm "  + _quantity + " sản phẩm '" + _productName + "' vào giỏ hàng ");
			let data = {
				productId: _productId, //lay theo id
				quantity: _quantity,
				
			};
				
			//$ === jQuery
			jQuery.ajax({
				url : "/add-to-cart",
				type : "POST",
				contentType: "application/json",
				data : JSON.stringify(data),
				dataType : "json", //Kieu du lieu tra ve tu controller la json
				
				success : function(jsonResult) {
					/* alert(jsonResult.code + ": " + jsonResult.message); */
					let totalProducts = jsonResult.totalCartProducts;
					$("#totalCartProductsId").html(totalProducts);
				},
				
				error : function(jqXhr, textStatus, errorMessage) {
					alert(jsonResult.code + ': Đã có lỗi xay ra...!')
				},
			});
		}
	</script>
	
	<!-- pagination -->
	<script type="text/javascript">
		$( document ).ready(function() {
			var items = $(".products .product");
			var numItems = items.length;
			var perPage = 6;
			
			items.slice(perPage).hide();
			
			$("#paging").pagination({
				items: numItems,
			    itemsOnPage: perPage,
			    prevText: "&laquo;",
		        nextText: "&raquo;",
				cssStyle: 'light-theme',
				onPageClick: function (pageNumber) {
			        var showFrom = perPage * (pageNumber - 1);
			        var showTo = showFrom + perPage;
			        items.hide().slice(showFrom, showTo).show();
			    },
			});
		});
	</script>
</body>

</html>