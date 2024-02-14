$('.btn').on('click', function(){
    var action = $(this).attr('data-action');
    var soluong = $(this).parent().find('input[name="soluong"]').val();
    var price1 = $(this).parent().find('input[name="soluong"]').attr('data-price');
    if(action == 'tru'){
        if(soluong > 1){
            soluong = parseInt(soluong) -1;
        }
        else{
            soluong = 1;
        }
    } else{
        soluong = parseInt(soluong) +1;
    }

    var totalPrice = soluong * price1;
    $(this).parent().find('input[name="soluong"]').val(soluong);
    $(this).parents(".products-cart").find('.total-price1').attr('data-total-price', totalPrice);
    $(this).parents(".products-cart").find('.total-price1').text(formatPrice(totalPrice));
    $(this).parents(".products-cart").find('input[name="soluong"]').val(soluong);

    var totalAll = countTotalPrice();
    $('.total-all span').text(formatPrice(totalAll));
});

function countTotalPrice(){
    var totalAll = 0;
    $('.total-price1').each(function(){
        var totalPriceItem = $(this).attr('data-total-price');
        totalAll += parseInt(totalPriceItem);
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

$('.btn-remove').on('click', function(){
    $(this).parents('.products-cart').remove();
    var totalAll = countTotalPrice();
    $('.total-all span').text(formatPrice(totalAll));
})