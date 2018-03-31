(function() {
  (function() {
    return $(".logo").click(function() {
      $("body").toggleClass("contrast");
    });
  }).call(this);

  $(document).ready(function() {
    $('.list-main li').mouseenter(function(e) {
      var x;
      x = e.pageX - ($(this).offset().left);
      $(this).css('z-index', '20').children('.tooltip').css({
        'margin-left': x + 20,
        'display': 'block'
      });
    }).mousemove(function(e) {
      var x;
      x = e.pageX - ($(this).offset().left);
      $(this).children('div.tooltip').css({
        'margin-left': x + 20
      });
    }).mouseleave(function() {
      $(this).css('z-index', '1').children('.tooltip').animate({
        'opacity': 'hide'
      }, 'fast');
    });
  });

}).call(this);
