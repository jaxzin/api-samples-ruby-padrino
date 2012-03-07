function startCarousel() {

    var carouselInner = $('.carousel-inner');

    carouselInner.children(':first').addClass('active');

    $('.carousel').carousel({interval:7000});
}