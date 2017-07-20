$(function() {
    $('.slick-slider').slick({
        prevArrow: '<button class="btn-pr"></button>',
        nextArrow: '<button class="btn-nx"></button>',
        dots: false,
        infinite: true,
        speed: 800,
        slidesToShow: 1,
        adaptiveHeight: true
    });
});