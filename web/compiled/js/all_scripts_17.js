$(function () {
    var menu = new cbpHorizontalSlideOutMenu(document.getElementById('cbp-hsmenu-wrapper'));

    if($('.bxslider').length > 0){
        $('.bxslider').bxSlider({
            slideWidth: 200,
            minSlides: 1,
            maxSlides: 5,
            slideMargin: 20
        });
    }


    if($('.fancybox').length > 0){
        $(".fancybox").fancybox({
            padding : 35
        });
    }
})