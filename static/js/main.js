(function() {
  $(".logo").click(function() {
    $("header").toggleClass("fart");
  });

  $(document).ready(function() {
    var audio;
    audio = $(".click")[0];
    $(".logo").mousedown(function() {
      audio.play();
    });
    $(".logo").mouseup(function() {
      audio.play();
    });
  });

}).call(this);
