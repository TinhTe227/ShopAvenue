<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- directive của JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
    <link rel="stylesheet" type="text/css" href="${classpath}/frontend/slick/slick.css" />
    <link rel='stylesheet' type='text/css' media='screen' href='${classpath}/frontend/css/product_view.css'>
</head>

<body>
    <jsp:include page="/WEB-INF/views/frontend/layout/header.jsp"></jsp:include>

    <nav class="nav">
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
                    <a href="">WOMENS</a>
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
    <img src="${classpath }/frontend/images/product_view/prd_view1.png" width="100%" alt="" />
    <main>
        <div class="info_product">
        	
        		<div class="slider_left">
        		<c:forEach items="${productImages }" var="productImage">
                <div class="item_slider">
                    <img src="${classpath }/FileUploads/${productImage.path}" width="100%" alt="" />
                </div>
                </c:forEach>
            </div>
        	
            

            <div class="desc_product">
                <div style="font-size: 25px; font-weight: 700; color: #837f80;">
                    ${product.name}
                </div>

                <div class="feedback">
                    <div class="star">
                        <i class="fa-regular fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                    </div>
                    <div class="review">
                        <p style="border-right: 1px solid #837f80;"><a href="">3 review(s)</a></p>
                        <p style="border-right: 1px solid #837f80;"><a href="">Add a review</a></p>
                        <p>Share: </p>
                    </div>
                    <div class="icon">
                        <a href=""> <i class="fa-brands fa-facebook"></i></a>
                        <a href=""><i class="fa-brands fa-twitter"></i></a>
                        <a href=""><i class="fa-brands fa-google-plus-g"></i></a>
                    </div>
                </div>
                <div class="price">
                    <p><fmt:formatNumber value="${product.price }" minFractionDigits="0"></fmt:formatNumber> <sup>vnđ</sup></p>
                </div>

                <div class="desc_1">
                    <p><b style="color: #333;">AVAILABILITY: </b>In stock</p>
                    <p><b style="color: #333;">PRODUCT CODE: </b>#499577</p>
                    <p style="color: #00c8c8;"><b style="color: #333;">TAGS: </b>Classic, Casual, V-neck</p>
                </div>
                <div class="desc_2">
                    <p>${product.detailDescription }
                    </p>
                    <ul>
                        <li>Elasticated cuffs</li>
                        <li>Casual fit</li>
                        <li>100% Cotton</li>
                        <li>Free shipping with 4 days delivery</li>
                    </ul>
                </div>

                <div class="detail">
                    <div class="color">
                        <label>COLOUR</label>
                        <select name="color" class="form" style="width: 170px; padding: 5px 2px;">
                            <option value="" selected>Select Colour</option>
                            <option value="r">Red</option>
                            <option value="b">Blue</option>
                            <option value="bl">Black</option>
                            <option value="p">Pink</option>
                        </select>

                    </div>
                    <div class="size">
                        <label for="">SIZE</label>
                        <select name="size" class="form" style="width: 170px; padding: 5px 2px;" id="">
                            <option value="" selected>Select size</option>
                            <option value="s">S</option>
                            <option value="m">M</option>
                            <option value="l">L</option>
                            <option value="xl">XL</option>

                        </select>
                    </div>
                    <div class="quantity">
                        <label for="">QTY</label>
                        <input style="height: 26px;" type="number" value="1" id="quantity">
                    </div>
                </div>

                <div class="add_product">
                    <div class="add_cart">
                        <a onclick="addToCart(${product.id}, quantity, '${product.name }')">
                            <i class="fa-solid fa-cart-shopping"></i>
                            <span>ADD TO CART</span>
                        </a>
                    </div>
                    <div class="add_lookbook">
                        <a>
                            <i class="fa-regular fa-heart"></i>
                            <span>ADD TO LOOKBOOK</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <div class="nav_sub">
            <ul>
                <li>
                    <a href="">DESCRIPTION</a>
                </li>
                <li>
                    <a href="">VIDEO</a>
                </li>
                <li>
                    <a href="">SIZE & SPECS</a>
                </li>
                <li>
                    <a href="">DELIVERY & RETURNS</a>
                </li>
                <li>
                    <a href="">REVIEWS</a>
                </li>
            </ul>
        </div>

        <div class="desc_detail">
            <p class="title_1">NUNC EGESTAS POSUERE ENIM, EU MAXIMUS ERAT POSUERE EGET</p>
            <p style="font-size: 14px; color: #949494;">Embrace the art of mix and match with our selection of trousers
                and chinos, offering endless
                possibilities to create personalized ensembles that suit your unique personality. Complete your look
                with our range of carefully curated accessories, from sophisticated leather belts to timeless watches,
                adding the perfect finishing touch to any outfit.</p>
            <p style="font-size: 14px; color: #949494;">
                At our store, we believe that fashion is not just about clothes; it's a reflection of one's personality
                and individuality. Our commitment to quality craftsmanship and attention to detail ensures that each
                piece exudes style and durability, making them investment pieces for your wardrobe.
            </p>
        </div>
    </main>
    
    <jsp:include page="/WEB-INF/views/frontend/layout/footer.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/frontend/layout/js.jsp"></jsp:include>
	
   <!-- JS -->
   <script src="${classpath }/frontend/slick/jquery-3.7.0.min.js"></script>
	<script src="${classpath }/frontend/slick/slick.min.js"></script>

<script>
$(document).ready(function () {
    $('.slider_left').slick({
        /*tự động chạy*/
        autoplay: true,
        prevArrow: '<button type="button" class="slick-prev custom-prev"><i class="fa-solid fa-chevron-left"></i></button>',
        nextArrow: '<button type="button" class="slick-next custom-next"><i class="fa-solid fa-chevron-right"></i></button>',
        /*số lượng slide hiển thị 1 lần chạy*/
        slidesToShow: 1,
        /*thời gian next sang một slide mới */
        speed: 2000,
        /*next bao nhiêu ảnh 1 lần*/
        slidesToScroll: 1
    });
});
</script>

<!-- Add to cart -->
	<script type="text/javascript">
		addToCart = function(_productId, _quantity, _productName) {		
			alert("Thêm "  +jQuery("#quantity").val() + " sản phẩm '" + _productName + "' vào giỏ hàng ");
			let data = {
				productId: _productId, //lay theo id
				quantity: jQuery("#quantity").val(),
				
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
</body>

</html>