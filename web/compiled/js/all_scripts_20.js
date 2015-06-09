// Обертка для асинхронных запросов
function request(url, data, callbacks, method) {
    if (!callbacks) {
        callbacks = {};
    }

    if (!callbacks.success) {
        callbacks.success = function () {
        };
    }

    if (!callbacks.error) {
        callbacks.error = function () {
        };
    }
    $.ajax({
        url: url,
        data: data || {},
        method: method || 'post',
        complete: function (xhr) {
            callbacks.success(xhr);
        },
        error: function (xhr) {
            callbacks.error(xhr);
        }
    })
}

$(function () {
    // Обрабокта формы оплаты
    $('#receipt_comission_val_individual').text($('#amount').val());
    $('form#individual_form_payment #mnt_amount_individual').val(parseFloat($('#amount').val()) + parseFloat($('#amount').val())*0.033);
    $('#receipt_comission_val_individual_bank').text(parseFloat($('#amount').val()) + parseFloat($('#amount').val())*0.033);
    $('#individual_form_payment #amount').keyup(function(){
        $('form#individual_form_payment #mnt_amount_individual').val(parseFloat($('#amount').val()) + parseFloat($('#amount').val())*0.033);
        $('#receipt_comission_val_individual').text($(this).val());
        $('#receipt_comission_val_individual_bank').text(parseFloat($('#amount').val()) + parseFloat($('#amount').val())*0.033);
    });

    $('#postEqYuri').change(function(){
        if($('#postEqYuri').prop('checked') == true){
            $('#mailAddress').val($('#legalAddress').val());
        }
    });
    
    // Оплата через банк физ лицом
    $('#individual_form_payment #individual_submit').on('click', function() {
        var errors = false;
        $(this).button('loading');
        $.each($('#individual_form_payment').find('input'), function(key, el){
            if($.trim($(el).val()).length == 0){
                errors = true;
            }
        });

        if(errors === true){
            $(this).button('reset');
            alert('Все поля обязательны для заполнения');
            return false;
        }
        $('form#individual_form_payment #mnt_amount_individual').val(parseFloat($('#receipt_comission_val_individual_bank').text()));
        $.ajax({
            url: $('#individual_form_payment').attr('bs-action'),
            type: 'post',
            data: $('#individual_form_payment').serialize(),
            // async: false,
            success: function(data) {
                $(this).button('reset');
                $('#individual_form_payment').submit();
            },
            error: function() {
                $(this).button('reset');
                // alert('Произошла ошибка при проведение платежа. ');
            }
        });
    });

    // Квитанции на оплату(физ)
    $('#print_receipts_individual').click(function(){
        var errors = false;
        // validate
        $.each($('#individual_form_payment').find('input'), function(key, el){
            if($.trim($(el).val()).length == 0){
                errors = true;
            }
        });

        if(errors === true){
            alert('Все поля обязательны для заполнения');
            return false;
        }

        var url = $(this).attr('bs-form-action');
        request(url, $('form#individual_form_payment').serialize(), {
            success: function(data){
                $(this).button('reset');
                $('#print_receipts_individual').attr('href', data.responseJSON.uri);
                $('#print_receipts_individual').attr('target', '_blank');
                $('#print_receipts_individual').text('Скачать');
            }
        });
    });

    // Квитанции на оплату(юр)
    $('#legal_form_payment #legal_submit').on('click', function() {
        $(this).button('loading');
        var errors = false;
        $.each($('#legal_form_payment').find('input'), function(key, el){
            if($.trim($(el).val()).length == 0){
                errors = true;
            }
        });

        if(errors === true){
            $(this).button('reset');
            alert('Все поля обязательны для заполнения');
            return false;
        }
        $.ajax({
            url: $('#legal_form_payment').attr('bs-action'),
            type: 'post',
            data: $('#legal_form_payment').serialize(),
            // async: false,
            success: function(data) {
                $(this).button('reset');
                $('#legal_submit').attr('href', data.uri);
                $('#legal_submit').attr('target', '_blank');
                $('#legal_submit').text('Скачать счет');
            },
            error: function() {
                $(this).button('reset');
                // alert('Произошла ошибка при проведение платежа. ');
            }
        });
    });

    // $('#print_receipts_legal').click(function(){
    //     request($(this).attr('bs-form-action'), $('form#legal_form_payment').serialize(), {
    //         success: function(data){
    //             debugger;
    //         }
    //     });
    // })


    // Set reference for all feedback forms
    $('[bs-id="form-reference"]').val(window.document.location.href);
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

    $("[data-toggle=popover]").popover({html: true});


    if ($('#calculate').length == 1) {
        var offset = $(".forma_zakaza").offset();
        var topPadding = $('#calculate').offset().top;        
        $(window).scroll(function () {
    //        debugger;
            var scroolL = $(this).scrollTop();
            topPadding = $('#calculate').offset().top;     
           
            /*if (scroolL <= (topPadding+ $('#calculate').height())) {
                if (scroolL > (offset.top - topPadding)) {
                    console.log('marginTop' +  ((scroolL-topPadding) + 2500+ 2048));
                    $(".forma_zakaza").stop().animate({marginTop: (scroolL-topPadding) + 2500+2048});
                }
                else {
                    console.log('marginTop' + 0);
                    $(".forma_zakaza").stop().animate({marginTop: 0});
                }
            }*/ 
            scroolL+=20;  
            
            if (scroolL > topPadding + $('#calculate').height() - $(".forma_zakaza").height() ) {
                console.log('MAX');
                $(".forma_zakaza").stop().animate({marginTop: $('#calculate').height() - $(".forma_zakaza").height()}, 200);
            }
            else if (scroolL > topPadding ) {
                $(".forma_zakaza").stop().animate({marginTop: scroolL - topPadding }, 200);
            }
            else {
                $(".forma_zakaza").stop().animate({marginTop: 0}, 200);
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

    if ($('#cbp-hsmenu-wrapper').length > 0) {
        var menu = new cbpHorizontalSlideOutMenu(document.getElementById('cbp-hsmenu-wrapper'));
    }


    if ($('.bxslider').length > 0) {
        $('.bxslider').bxSlider({
            slideWidth: 200,
            minSlides: 1,
            maxSlides: 5,
            slideMargin: 20,
        });
        setInterval(function(){
            $('.bx-viewport').css('height', '200px');    
        }, 100);
        
    }

    if ($("#completedSites .fancybox").length) {
        $("#completedSites .fancybox").fancybox({
            padding: 0,
            'width': "45%",
            'autoDimensions': false,
            beforeShow: function (links, index) {
                var src = (this.element).attr('src');
                $('#orderSite img#activeNowSiteItem').attr('src', src);
            }
            // afterShow: function () {
            //     var customHtml = '<div id="content-wrapper-bottom-facnybox">' +
            //         '<div class="row">' +
            //         '<div class="col-md-6 col-sm-12 col-xs-12" id="content-wrapper-text">' +
            //         'Заказать такой сайт за <span>11 950 руб</span>. <br>' +
            //         '(или за <span>8 365 руб</span>. при заказе продвижения)' +
            //         '</div>' +
            //         '<div class="col-md-6 col-sm-12 col-xs-12">' +
            //         '<div class="row">' +
            //         '<div class="col-md-6 col-sm-12 col-xs-12">' +
            //         '<div id="demoSiteBtn">' +
            //         '<a href="#" title="Демо" class="orderSiteBtn">Посмотреть демо</a>' +
            //         '</div>' +
            //         '</div>' +
            //         '<div class="col-md-3 col-sm-12 col-xs-12">' +
            //         '<div id="orderSiteBtn">' +
            //         '<a href="#" title="Заказать" class="btn-podrobnee">Заказать сейчас</a>' +
            //         '</div>' +
            //         '</div>' +
            //         '</div>' +
            //         '</div>' +
            //         '</div>' +
            //         '</div>';
            //     $('.fancybox-wrap .fancybox-title-float-wrap').addClass('customForSecondBlock').html(customHtml);
            // }
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

    var feedbackDescription = "";
    $('.fancybox[bs-action="feedback"]').click(function(){
        feedbackDescription = $(this).attr('bs-form-description');
    })

    // Send data from form feedback
    $('form[bs-type="feedback"]').on('submit', function (e) {
        e.preventDefault();
        $(this).find('input[name="ref"]').val(document.location.href);
        $(this).find('input[name="ref_description"]').val(feedbackDescription);
        var data = $(this).serialize();
        var route = $(this).attr('bs-action');  
        sendFeed(route, data, {
            success: function () {
                
            }, error: function () {
                
            }
        });
    });

    // Whois
    $('[bs-action="whois"]').click(function () {
        whoisAction();
    });

    // Whois Enter
    $('input#domain-input-whois').keyup(function (e) {
        if (e.which == 13) {
            e.preventDefault();
            whoisAction();
        }
    });

    // Select active calc type
    if($('.calc-type-item').length > 0){
        $('.calc-type-item').eq(0).prop('checked', true);
    }

    $('[bs-id="dontknow"]').click(function(){
        if($('.dontknow').hasClass('cbp-hsitem-open')){
            return false;
        }
        //$('.dontknow .cbp-hssubmenu').hide();
        //$('.dontknow .cbp-hssubmenu-small').hide();
       request($(this).attr('bs-action'), {}, {
           success: function(xhr){
               var tpl = '';
               if(xhr.responseJSON.length > 0){
                   $.each(xhr.responseJSON, function(key, obj){
                       tpl +=  "<li>"+obj.caption+"<br /><a href='"+obj.href+"'>"+obj.href+"</a>";
                   });
                   $('.dontknow ol').html(tpl);
                   //$('.dontknow .cbp-hssubmenu').show();
                   //$('.dontknow .cbp-hssubmenu-small').show();
               }
           }
       })
    });
    $("dl.faq dt, dl.faq-index dt").click(function() {
      var $this = $(this);
      var $dd = $(this).next();

      if ($this.hasClass('active')) {
        $this.removeClass('active');
        $dd.removeClass('active');
        $dd.hide(150);
      } else {
        $("dl.faq dt").removeClass('active');
        $("dl.faq dd").removeClass('active').hide(150);
        $this.addClass('active');
        $dd.addClass('active');
        $dd.show(150);
      }
      return false;
    });

    var activetab = 0;
    var $wmatt = $('.web-money-attestat');
    $wmatt.hide();
    var $tabs = $('.payment ul.tabs li');
    var $tabContent = $('.paytabs.tab-content');    
    var showTabContent = function(index){
      $tabContent.hide().css('opacity' , '0');
      $tabContent.filter("[data-index='"+index+"']").show().animate({'opacity' : '100'}, 1500);
      if (index ==0) {
        $wmatt.show().css('opacity', '0').animate({'opacity' : '100'}, 150);
      } else {
        $wmatt.hide();
      }
    }    
    $tabs.click(function(){
      $tabs.removeClass('active');
      activetab = parseInt($(this).attr('data-index'));
      $tabs.eq(activetab).addClass('active');
      showTabContent(activetab);
      return false;
    });
    $tabs.removeClass('active');
    $tabs.eq(activetab).addClass('active');
    showTabContent(activetab);

    $('.gotovie li a').click(function(){
      var $this = $(this);
      var id = $this.attr('href');
      $('.gotovie li').removeClass('active');
      $(this).parent().addClass('active');
      $(".tab-pane").removeClass('.active').hide();
      $(id).addClass('.active').show().css('opacity', '0').animate({'opacity' : '100'}, 150);
    });


    var hash = location.hash;
    if (hash == "" || hash == "#"){
        $('.gotovie li a').eq(0).parent().addClass('active');
        $(".tab-pane").eq(0).show().css('opacity', '0').animate({'opacity' : '100'}, 150);
    } else {
        $('.gotovie li').removeClass('active');
        $('a[href="' + hash + '"]').parent().addClass('active');
        $(".tab-pane").removeClass('.active').hide();
        $(hash).addClass('.active').show().css('opacity', '0').animate({'opacity' : '100'}, 150);
    }
});



function whoisAction() {
    var elBusy = $('#whois-domain-form .zanyat');
    var elAvail = $('#whois-domain-form .svoboden');
    var elError = $('#whois-domain-form .error');
    var elBtn = $('#whois-domain-form .submit');
    var resEl = $('#whois-domain-form .result');
    elBusy.css({'visibility': 'hidden', 'opacity': 0});
    elAvail.css({'visibility': 'hidden', 'opacity': 0});
    elError.css({'visibility': 'hidden', 'opacity': 0});
    var domain = $('#domain-input-whois').val().toLowerCase();
    var msg = "";
    if (isDomain(domain)) {
        elBtn.button('loading');
        request(window.ROUTES.whois, {name: punycode.toASCII(domain)}, {
            success: function (data) {
                if (data.responseJSON) {
                    switch (data.responseJSON.status) {
                        case 'available':
                            elAvail.css({'visibility': 'visible', 'opacity': 1});
                            resEl.removeClass('color-red').addClass('color-green');
                            resEl.text('Свободен');
                            break;
                        case 'busy':
                            elBusy.css({'visibility': 'visible', 'opacity': 1});
                            resEl.removeClass('color-green').addClass('color-red');
                            resEl.text('Занят');
                            break;
                        case 'error':
                            elError.css({'visibility': 'visible', 'opacity': 1});
                            resEl.removeClass('color-green').addClass('color-red');
                            resEl.text('Неверно');
                            break;
                    }
                }

                elBtn.button('reset');
            }
        });
    } else {
        elError.css({'visibility': 'visible', 'opacity': 1});
        resEl.removeClass('color-green').addClass('color-red');
        resEl.text('Неверно');
    }
}

function isDomain(domain) {
    var patt = new RegExp(/^[a-zа-я0-9]+([\-\.]{1}[a-zа-я0-9]+)*\.[a-zа-я\-]{2,5}(:[0-9]{1,5})?$/i);
    if (patt.test(domain)) {
        return true;
    }
    return false;
}

function sendFeed(path, data, success, error) {
    $('.btn-podrobnee').button('loading');
    $.ajax({
        type: 'post',
        data: data,
        url: path,
        complete: function (xhr) {
            $('.btn-podrobnee').button('reset');
            if (xhr.responseJSON && xhr.responseJSON.answer == 'ok') {
                alertify.success('Ваше сообщение успешно отправлено. Мы с Вами свяжемся!');
                $.fancybox.close();
            } else {
                alertify.error('Ошибка при выполнение запроса. Попробуйте позже');
            }
        }
    })
}

