//= require rails-ujs
//= require jquery
//= require jquery_ujs
//= require jquery.slick
//= require_tree .
//= require_tree ./channels


    $(document).ready(function(){
      console.log('hello zorld' )


      $('.bandimage').slick(
        {
            dots: true,
            infinite: true,
            speed: 300,
            slidesToShow: 1,
            arrows: false,
            centerMode: true,
            variableWidth: true
        });

    });
