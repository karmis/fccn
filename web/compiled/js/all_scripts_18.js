$(function () {

//////////////fixed_menu///////////
    function nc_scrollMenuFix() {
        var num = 90; //number of pixels before modifying styles
        $(window).bind('scroll', function () {
            if ($(window).scrollTop() > num) {
                $('#cbp-hsmenu-wrapper').addClass('fixed');
            } else {
                $('#cbp-hsmenu-wrapper').removeClass('fixed');
            }
        });
    }

    nc_scrollMenuFix();
//////////////fixed_menu///////////


//////////////menu-origin///////////
    $('.open-close-menu').bind('click', function () {
        if ($('.cbp-hsmenu > li:not(:first-child)').css('display') == 'none') {
            $(this).parents('nav').eq(0).addClass('menuIsOpenNow');
            $('.cbp-hsmenu > li:not(:first-child)').css({'display': 'block'});
        } else {
            $('.cbp-hsmenu > li:not(:first-child)').css({'display': 'none'});
            $(this).parents('nav').eq(0).removeClass('menuIsOpenNow');
        }
    });
//////////////menu-origin///////////

    $(document).on('blur', '.cbp-hsitem-open', function () {
        $(this).removeClass('cbp-hsitem-open');
        $(this).attr('data-open', '');
        $('.cbp-hsmenubg').css({'height': '0'});
    });


    $('body').on('click', function (e) {
        if ($(e.toElement).parents('nav').length == 0) {
            $('.cbp-hsmenu > li:not(:first-child)').css({'display': 'none'});
        }

    });


    if ($('#calculate').length == 1) {
        var offset = $(".forma_zakaza").offset();
        var topPadding = 600;
        $(window).scroll(function () {
            var scroolL = $(this).scrollTop();
            if (scroolL <= (650 + $(".calculate").height())) {
                if (scroolL > (offset.top - 600)) {
                    $(".forma_zakaza").stop().animate({marginTop: scroolL - offset.top + topPadding});
                }
                else {
                    $(".forma_zakaza").stop().animate({marginTop: 0});
                }
            }
        });
    }


    $('label[for="read_more"]').on('click', function () {
        if ($('#read_more').prop('checked')) {
            $('label[for="read_more"]').text("Читать далее");
        } else {
            $('label[for="read_more"]').text("Скрыть");
        }
    });


    $('label[for="read_more2"]').on('click', function () {
        if ($('#read_more2').prop('checked')) {
            $('label[for="read_more2"]').text("Читать далее");
        } else {
            $('label[for="read_more2"]').text("Скрыть");
        }
    });

    $('label[for="read_more3"]').on('click', function () {
        if ($('#read_more3').prop('checked')) {
            $('label[for="read_more3"]').text("Читать далее");
        } else {
            $('label[for="read_more3"]').text("Скрыть");
        }
    });

    if($('#cbp-hsmenu-wrapper').length > 0){
        var menu = new cbpHorizontalSlideOutMenu(document.getElementById('cbp-hsmenu-wrapper'));
    }


    if ($('.bxslider').length > 0) {
        $('.bxslider').bxSlider({
            slideWidth: 200,
            minSlides: 1,
            maxSlides: 5,
            slideMargin: 20
        });
    }

    if ($("#completedSites .fancybox").length) {
        $("#completedSites .fancybox").fancybox({
            padding: 0,
            'width': "50%",
            'autoDimensions': false,
            beforeShow: function (links, index) {
                var src = (this.element).attr('src');
                $('#orderSite img#activeNowSiteItem').attr('src', src);
            },
            afterShow: function () {
                var customHtml = '<div id="content-wrapper-bottom-facnybox">' +
                    '<div class="row">' +
                    '<div class="col-md-6 col-sm-12 col-xs-12" id="content-wrapper-text">' +
                    'Заказать такой сайт за <span>11 950 руб</span>. <br>' +
                    '(или за <span>8 365 руб</span>. при заказе продвижения)' +
                    '</div>' +
                    '<div class="col-md-6 col-sm-12 col-xs-12">' +
                    '<div class="row">' +
                    '<div class="col-md-6 col-sm-12 col-xs-12">' +
                    '<div id="demoSiteBtn">' +
                    '<a href="#" title="Демо" class="orderSiteBtn">Посмотреть демо</a>' +
                    '</div>' +
                    '</div>' +
                    '<div class="col-md-3 col-sm-12 col-xs-12">' +
                    '<div id="orderSiteBtn">' +
                    '<a href="#" title="Заказать" class="btn-podrobnee">Заказать сейчас</a>' +
                    '</div>' +
                    '</div>' +
                    '</div>' +
                    '</div>' +
                    '</div>' +
                    '</div>';
                $('.fancybox-wrap .fancybox-title-float-wrap').addClass('customForSecondBlock').html(customHtml);
            }
        });
    } else {
        if ($('.fancybox').length > 0) {
            $(".fancybox").fancybox({
                padding: 35
            });
        }
    }

    if ($(".portfolioListing").length) {
        $(".portfolioListing").quicksandpaginated({
            wrapper: ".portfolioListing",
            container: '.fn-portfolioCarrousel',
            containerWidth: 745,
            containerHeight: 800,
            thumbs: "article",
            hoverContainers: '.preview',
            filtersContainer: ".portfolio-filters",
            filters: "li",
            prev: ".carrousel_prev",
            next: ".carrousel_next",
            pageNumberContainer: ".portfolioCarrousel_nav",
            thumbsHeight: 174,
            thumbsWidth: 211,
            transitionSpeed: 0,
            callback: function (c) {
                c.trigger("complete");
                $('.portfolioCarrousel_nav ul li span').parent().addClass('pageActive');
            }
        });
        $('.portfolioCarrousel_nav ul li span').parent().addClass('pageActive');
        $(document).on('click', '.portfolioCarrousel_nav ul li', function () {
            $(this).find('a').trigger('click')
        });
    }
})

