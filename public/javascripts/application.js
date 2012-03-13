function startCarousel() {

    var carouselInner = $('.carousel-inner');

    carouselInner.children(':first').addClass('active');

    $('.carousel').carousel({interval:7000});

    $('#espn-marquee').webTicker();
}


// Support for fixing the subnav on scrolling

!function ($) {

    $(function(){

        // fix sub nav on scroll
        var $win = $(window)
                , $nav = $('.subnav')
                , navTop = $('.subnav').length && $('.subnav').offset().top - 40
                , isFixed = 0

        processScroll()

        $win.on('scroll', processScroll)

        function processScroll() {
            var i, scrollTop = $win.scrollTop()
            if (scrollTop >= navTop && !isFixed) {
                isFixed = 1
                $nav.addClass('subnav-fixed')
            } else if (scrollTop <= navTop && isFixed) {
                isFixed = 0
                $nav.removeClass('subnav-fixed')
            }
        }

    })

}(window.jQuery)