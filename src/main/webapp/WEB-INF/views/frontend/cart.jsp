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
	<link rel='stylesheet' type='text/css' media='screen' href='${classpath}/frontend/css/cart.css'>    
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
    <main>
        <div class="title_1">
            <p>Home</p>
            <i class="fa-solid fa-chevron-right"></i>
            <p>Cart</p>
        </div>
        <div class="content">
            <div class="content_left">
                <table>
                    <thead>
                        <tr>
                            <th>Product</th>
                            <th>Name</th>
                            <th>Colour</th>
                            <th>Size</th>
                            <th>QTY</th>
                            <th>Total</th>
                            <th>Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                    	<c:forEach  var="item" items="${cart.cartProducts }" varStatus="loop">
                    		<tr class="row">
                            <td><img src="${classpath}/FileUploads/${item.avatar }" width="100%" alt="" /></td>
                            <td>
                                <p>${item.productName }</p>
                            </td>
                            <td>
                                <p>White</p>
                            </td>
                            <td>
                                <p>XL</p>
                            </td>
                            <td><input class="qty" id="qty" onchange="updateProductQuantity(${item.productId })"  name="soluong" data-price="${item.price }" type="number"  value="${item.quantity }"></td>
                            <td>
                                <div class="total_price" data-total-price="${item.price }">
                                    ${item.price * item.quantity }<sup>vnđ</sup>
                                </div>
                            </td>
                            <td>
                                <div class="remove_product">
                                	<button type="button" class="btn_edit"> <a href="${classpath }/product_view/${item.productId }" style="text-decoration: none;">Edit</a> </button>
                                    <button type="button" class="btn_remove"> <a href="${classpath }/product-cart-delete/${item.productId }" style="text-decoration: none;">Delete</a> </button>
                                </div>
                            </td>
                        </tr>
                    	</c:forEach>
                    </tbody>
                </table>
            </div>
            <div class="content_right">
                <div class="pay_info">
                    <h3>ORDER SUMMARY</h3>
                    <div class="overview_info">
                        <p>QTY</p>
                        <p class="total_qty">${totalQuantity  }</p>
                    </div>
                    <div class="overview_info">
                        <p>Total</p>
                        <p class="total_all">${totalCartPrice  }  <sup>vnđ</sup></p>
                    </div>
                    <div class="overview_info">
                        <p>Discounts</p>
                        <p>0</p>
                    </div>
                    <div class="overview_info">
                        <p>Provisional</p>
                        <p class="total_all" >${totalCartPrice  }  <sup>vnđ</sup></p>
                    </div>
                    <div class="overview_info">
                        <p>Transport fee</p>
                        <p>0đ</p>
                    </div>
                    <div class="overview_info">
                        <p>Payments</p>
                        <p class="total_all" class="pay">${totalCartPrice  } <sup>vnđ</sup></p>
                    </div>
                </div>
                <div class="btn_pay">
                    <h3>Payment</h3>
                </div>
            </div>
        </div>
        <h2 style="text-align: center;">THÔNG TIN KHÁCH HÀNG</h2>
        <form  method="get">
        	<div class="customer_info">
            <div class="cus_info">
                <label  for="name">CustomerName (*)</label> 
                <input  type="text"  id="txtName" name="txtName" value="${user.name }" placeholder="Vui lòng nhập họ tên ..."/>
            </div>
            <div class="cus_info">
                <label  for="mobile">CustomerMobile (*)</label> 
                <input  type="text"  id="txtMobile" name="txtMobile" value="${user.mobile }" placeholder="Vui lòng số điện thoại ..."/>
            </div>
            <div class="cus_info">
                <label  for="email">CustomerEmail</label> 
                <input  type="email" class="form-control" id="txtEmail"	name="txtEmail" value="${user.email }" placeholder="Vui lòng nhập email ..."/>
            </div>
            <div class="cus_info">
                <label  for="">CustomerAddress</label> 
                <input  type="text" class="form-control" id="txtAddress" name="txtAddress" value="${user.address }" placeholder="Vui lòng địa chỉ ..."/>
            </div>
            <div class="btn_place_order">
                <button type="submit" onclick="_placeOrder()">Place Order</button>
            </div>
        </div>
        </form>
    </main>
    <!-- footer -->
    <jsp:include page="/WEB-INF/views/frontend/layout/footer.jsp"></jsp:include>
	<script src="${classpath }/frontend/js/cart.js"></script>
	<jsp:include page="/WEB-INF/views/frontend/layout/js.jsp"></jsp:include>
	<script type="text/javascript">
		updateProductQuantity = function(_productId) {
			let data = {
				productId : _productId, //lay theo id
				quantity : $("#qty").val(),
			};

			//$ === jQuery
			jQuery.ajax({
				url : "/update-product-quantity",
				type : "POST",
				contentType : "application/json",
				data : JSON.stringify(data),
				dataType : "json", //Kieu du lieu tra ve tu controller la json

				success : function(jsonResult) {
					location.reload();
					//let totalProducts = jsonResult.totalCartProducts; 
					//$("#productQuantity_" + jsonResult.productId).html(jsonResult.newQuantity); 
				},

				error : function(jqXhr, textStatus, errorMessage) {
					alert("An error occur");
				}
			});
		}
	</script>
	
	<script type="text/javascript">
		function _placeOrder() {
			//javascript object
			let data = {				
				txtName : jQuery("#txtName").val(),
				txtEmail : jQuery("#txtEmail").val(), //Get by Id
				txtMobile : jQuery("#txtMobile").val(),
				txtAddress : jQuery("#txtAddress").val(),
			};
			
			//$ === jQuery
			jQuery.ajax({
				url : "/place-order",
				type : "POST",
				contentType: "application/json",
				data : JSON.stringify(data),
				dataType : "json", //Kieu du lieu tra ve tu controller la json
				
				success : function(jsonResult) {
					alert(jsonResult.code + ": " + jsonResult.message);
					//$("#placeOrderSuccess").html(jsonResult.message);
				},
				
				error : function(jqXhr, textStatus, errorMessage) {
					alert("An error occur");
				}
			});
		}
	</script>
	
</body>

</html>