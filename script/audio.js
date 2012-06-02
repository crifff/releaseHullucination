(function() {

  $(function() {
    return $('#playBtn').click(function() {
      var bgm;
      $(this).toggleClass('btn-danger');
      $(this).toggleClass('btn-primary');
      $(this).children('i').toggleClass('icon-stop');
      $(this).children('i').toggleClass('icon-play');
      bgm = document.getElementById('bgm');
      if (bgm.paused) {
        return bgm.play();
      } else {
        bgm.pause();
        return bgm.currentTime = 0.0;
      }
    });
  });

}).call(this);
