$(function () {
    var menu = new cbpHorizontalSlideOutMenu(document.getElementById('cbp-hsmenu-wrapper'));

    $('.bxslider').bxSlider({
        slideWidth: 200,
        minSlides: 1,
        maxSlides: 5,
        slideMargin: 20
    });
})