$(function(){

    $('.main_search:not(.mob_vers) .select').live({
        mouseenter: function () {
            $(this).addClass('hover');
        },
        mouseleave: function () {
            $(this).removeClass('hover');
        }
    });
// $('.select').live('click', function(){
//     $(this).toggleClass('hover');
// });
    $('.term').live('click', function(){
        if(!$(this).hasClass('selected')||$(this).closest('.select').hasClass('hover')){
            $(this).closest('.select').find('.term_inp').val($(this).html());
            $(this).closest('.select').removeClass('hover').find('.selected').removeClass('selected');
            $(this).addClass('selected');
        }
        else{
            $(this).closest('.select').addClass('hover');
        }
    });

    $('.main_search_button').click(function(){
        main_search = $(this).closest('.main_search');

        document.cookie = "city=" + $('.city_id').data('cookie');
        document.cookie = "n_hood=" + main_search.find('.n_hood').data('cookie');

        document.cookie = "house=" + main_search.find('.select_location .selected').data('cookie');
        document.cookie = "room_type=" + main_search.find('.select_room_type .selected').data('cookie');
        document.cookie = "term=" + main_search.find('.select_term .selected').data('cookie');



        document.location.href = $(this).data('url');
    });

// $('.url_to_http').attr('src', $('.url_to_http').attr('src').slice(0, 4) +  $('.url_to_http').attr('src').slice(5));

    $('.full_screen_banner .close_button').click(function(){
        $('.full_screen_banner').hide();
        document.cookie = "banner=close";
    });

    $('.partners_slider').slick({
        infinite: true,
        slidesToShow: 3,
        slidesToScroll: 3,
        dots: false,
        arrows: true,
        adaptiveHeight: true,
        responsive: [
            {
                breakpoint: 650,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 2,
                    arrows: true,
                    dots: true
                }
            },
            {
                breakpoint: 420,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    arrows: true,
                    dots: false
                }

            }
        ]
    });

    $('.lazy').lazyLoadXT({visibleOnly: true});


    $('.reviews_slider').slick({
        lazyLoad: 'ondemand',
        infinite: true,
        slidesToShow: 1,
        slidesToScroll: 1,
        dots: false,
        adaptiveHeight: true,
        autoplay: true,
        autoplaySpeed: 6000,
        responsive: [
            {
                breakpoint: 700,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    dots: false
                }
            }
        ]
    });

    $('.img_slider').slick({
        lazyLoad: 'progressive',
        infinite: false,
        slidesToShow: 1,
        slidesToScroll: 1,
        dots: true,
        adaptiveHeight: true,
        responsive: [
            {
                breakpoint: 800,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    dots: true
                }
            }
        ]
    });

    $('.land_slider').slick({
        lazyLoad: 'ondemand',
        infinite: true,
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: true,
        dots: false,
        adaptiveHeight: true,
        autoplay: true,
        autoplaySpeed: 3000,
        infinite: true
    });



    $('.blog_slider').slick({
        lazyLoad: 'ondemand',
        infinite: true,
        slidesToShow: 4,
        slidesToScroll: 4,
        arrows: true,
        dots: false,
        adaptiveHeight: true,
        responsive: [
            {
                breakpoint: 800,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 3,
                    arrows: true,
                    dots: false
                }
            },
            {
                breakpoint: 500,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 2,
                    arrows: true,
                    dots: false
                }
            },
            {
                breakpoint: 420,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    arrows: true,
                    dots: false
                }
            }
        ]
    });
// slideScrollCount = $('.blog_slider .slick-active').length;

    if($(window).width() < 650){
        $(".blog_grid .blog").slick({
            infinite: true,
            slidesToShow: 2,
            slidesToScroll: 2,
            dots: false,
            autoplay: false,
            autoplaySpeed: 7000,
            adaptiveHeight: true,
            responsive: [
                {
                    breakpoint: 420,
                    settings: {
                        slidesToShow: 1,
                        slidesToScroll: 1,
                        arrows: true,
                        dots: false
                    }
                }
            ]
        });
    }


    $("input#faq_search").autocomplete({
        serviceUrl:'ajax/search_faq.php',
        minChars:2,
        noCache: false,
        onSelect:
            function(suggestion){
                $("input#faq_search").val('').focus().blur();
                id = suggestion.data.id;
                $('html, body').animate({
                    scrollTop: $('.pc_'+id).offset().top - 100
                }, 800);
                setTimeout(function(){
                    $('.pc_'+id).trigger( "click" );
                }, 1000);
            },
        formatResult:
            function(suggestions, currentValue){
                var reEscape = new RegExp('(\\' + ['/', '.', '*', '+', '?', '|', '(', ')', '[', ']', '{', '}', '\\'].join('|\\') + ')', 'g');
                var pattern = '(' + currentValue.replace(reEscape, '\\$1') + ')';
                return (suggestions.data.image?"<img align=absmiddle src='"+suggestions.data.image+"'> ":'') + suggestions.value.replace(new RegExp(pattern, 'gi'), '<strong>$1<\/strong>');
            }

    });

// Forms
    $('form.ajax').live('submit', function(e){
        e.preventDefault();

        var form_block = $(this).closest('.form2');
        var convers = $(this).find('button.button2').data('convers');

        $(this).ajaxSubmit({
            dataType: 'json',
            url: 'ajax/form.php',
            type: 'POST',
            success: function(data){
                if(form_block.find('input[value=service_id]').length > 0)
                    $('.counter_block .count span').html( parseInt($('.counter_block .count span').html())+1 );
                form_block.find('form').slideUp(1000);
                form_block.find('.info > span').html(data.content);
                form_block.find('.info').slideDown(1000);
                if(form_block.hasClass('hl_checklist')){
                    setCookie('mmr', '', {path : window.location.pathname});
                }
            }
        });

    });

// HouseLeader form
    function mmr(){
        var mmr = '';
        $('.mmr[type=checkbox]:checked, .mmr[type=radio]:checked, .mmr[type=text], textarea.mmr, select.mmr option:selected').each(function(){
            if($(this).val() != '')
                mmr += '__'+$(this).attr('id')+'--'+$(this).val();
        });
        mmr = mmr.slice(2);

        setCookie('mmr', mmr, {path : window.location.pathname});

        if(mmr=='')
            $('.hl_checklist .clear_form').addClass('hide');
        else
            $('.hl_checklist .clear_form').removeClass('hide');
    }
    $('.mmr[type=checkbox], .mmr[type=radio]').on('change', mmr);
    $('.mmr[type=text], textarea.mmr').keyup(mmr);

    $('.hl_checklist .clear_form').on('click', function(){
        if(!confirm('Please, confirm reset'))
            return false;

        $('.mmr[type=checkbox]:checked, .mmr[type=radio]:checked').prop('checked', false);
        $('.mmr[type=text], textarea.mmr').val('');
        mmr();
    });


    $('a.md_link').fancybox({
        transitionIn: 'none',
        transitionOut: 'none',
        padding: 20
    });

    $('.anchor').live('click', function(event){
        event.preventDefault();
        if($(window).width() < 801 && $.attr(this, 'href') == '#apply'){
            location = location.protocol + '//' + location.hostname + '/join-us';
        }
        $('html, body').animate({
            scrollTop: $( $.attr(this, 'href') ).offset().top
        }, 800);
    });

    $('.sidebar [href*="#"]').live('click', function(){
        $('.sidebar_bg').trigger("click");
    });

    $('.open_sidebar').click(function(){
        $('.sidebar').addClass('active');
        $('.sidebar_bg').addClass('active');
        $('body').css({'overflow':'hidden'});
    });
    $('.sidebar_bg, .sidebar .close').click(function(){
        $('.sidebar_bg').removeClass('active');
        $('.sidebar').removeClass('active');
        $('body').css({'overflow':'auto'});
    });

    var arrow_scroll = 0;
    $(window).scroll(function(){
        if (arrow_scroll == 0){
            if($(this).scrollTop() > 1000 && !$('.scroll_top').hasClass('active')){
                $('.scroll_top').addClass('active');
                arrow_scroll = 1;
            }
        }
        else if($(this).scrollTop() < 1000){
            $('.scroll_top').removeClass('active');
            arrow_scroll = 0;
        }
    });
    $('.scroll_top').click(function(){
        $("html, body").animate({scrollTop: 0},
            800);
    });

// Copy Link
    function CopyToClipboard(containerid) {
        try {
            window.getSelection().removeAllRanges();
        } catch (e) {
            document.selection.empty();
        }
        if (document.selection) {
            var range = document.body.createTextRange();
            range.moveToElementText(document.getElementById(containerid));
            range.select().createTextRange();
            document.execCommand("Copy");

        }else if (window.getSelection) {
            var range = document.createRange();
            range.selectNode(document.getElementById(containerid));
            window.getSelection().addRange(range);
            document.execCommand("Copy");
            //alert("text copied")
            $('.copy_link').addClass('copied');
            setTimeout(
                "$('.copy_link').removeClass('copied')",
                2000
            )
        }
    }
    $('.copy_link').click(function(){
        CopyToClipboard('link_to_copy');
    });


    $('.full_screen_banner .close_button').click(function(){
        $('.full_screen_banner').addClass('hide');
    });


    $('.moreless-button').click(function(){
        let conteiner = $(this).closest('.seo-text').find('.descr-container');
        if (conteiner.hasClass('open')) {
            conteiner.removeClass('open');
            $(this).attr('data-text', 'Read more');
        } else {
            conteiner.addClass('open');
            $(this).attr('data-text', 'Read less');
        }
    });


// Cookies
// documentation: https://learn.javascript.ru/cookie
    function getCookie(name) {
        var matches = document.cookie.match(new RegExp(
            "(?:^|; )" + name.replace(/([\.$?*|{}\(\)\[\]\\\/\+^])/g, '\\$1') + "=([^;]*)"
        ));
        return matches ? decodeURIComponent(matches[1]) : undefined;
    }

    function setCookie(name, value, options){
        options = options || {};
        var expires = options.expires;
        if(typeof expires == "number" && expires){
            var d = new Date();
            d.setTime(d.getTime() + expires * 1000);
            expires = options.expires = d;
        }
        if(expires && expires.toUTCString){
            options.expires = expires.toUTCString();
        }
        value = encodeURIComponent(value);
        var updatedCookie = name + "=" + value;
        for(var propName in options){
            updatedCookie += "; " + propName;
            var propValue = options[propName];
            if(propValue !== true){
                updatedCookie += "=" + propValue;
            }
        }
        document.cookie = updatedCookie;
    }

    function deleteCookie(name){
        setCookie(name, "",{
            expires: -1
        })
    }
// Cookies (End)

});