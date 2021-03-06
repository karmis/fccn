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
        });
    } else {
        if ($('.fancybox').length > 0) {
            $(".fancybox").fancybox({
                afterShow: function(){
                    var type = this.element.attr('bs-action-type');
                    switch(type) {
                        case 'feedback':
                            prepareFeedbackForm(this.element);
                            break;
                        default:
                            
                            break;
                    }
                },
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

