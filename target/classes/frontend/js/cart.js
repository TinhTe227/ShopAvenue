$('.qty').on('change', function(){
    var soluong = $(this).val();
    var price = $(this).parent().find('input[name="soluong"]').attr('data-price');
    var totalPrice = soluong * price;
    $(this).parents('.row').find('.total_price').attr('data-total-price',totalPrice);
    $(this).parents('.row').find('.total_price').text(formatPrice(totalPrice));

    var totalAll = countTotalPrice();
    $('.total_all').text(formatPrice(totalAll));

    var totalQty = countTotalQty();
    $('.total_qty').text(totalQty);
});



function countTotalQty(){
    var totalAll = 0;

    $('.qty').each(function(){
        var totalPriceItem = $(this).val();
        totalAll+= parseInt(totalPriceItem);
    });
    return totalAll;
}

function countTotalPrice(){
    var totalAll = 0;

    $('.total_price').each(function(){
        var totalPriceItem = $(this).attr('data-total-price');
        totalAll+= parseInt(totalPriceItem);
    });
    return totalAll;
}

function formatPrice(price){
    price = price.toString();
    var count = price.length;
    
    var number = Math.ceil(count/3);
    var array = [];
    var du = count%3;

    for(var i = 0; i < number; i++){
        if(i == 0){
            if(du == 0){
                array[i] = price.substr(0, 3);
                du = du + 3;
            }else{
                array[i] = price.substr(0, du);
            }
        }else{
            if(du <= count){
                array[i] = price.substr(du, 3);
                du = du + 3;
            }
        }
    }
    var str = array.join('.');
    str += 'đ';
    return str;
}


