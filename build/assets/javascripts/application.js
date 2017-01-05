(function() {
  (function() {
    $(".logo").click(function() {
      $("body").toggleClass("contrast");
    });
    $(document).ready(function() {
      var audio;
      audio = void 0;
      audio = $(".click")[0];
      $(".logo").mousedown(function() {
        audio.play();
      });
      $(".logo").mouseup(function() {
        audio.play();
      });
    });
  }).call(this);

}).call(this);
