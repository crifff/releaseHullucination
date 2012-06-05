(function() {

  $(function() {
    $('#playBtn1').click(function() {
      var bgm;
      $(this).toggleClass('btn-danger');
      $(this).toggleClass('btn-primary');
      $(this).children('i').toggleClass('icon-stop');
      $(this).children('i').toggleClass('icon-play');
      bgm = document.getElementById('bgm1');
      if (bgm.paused) {
        return bgm.play();
      } else {
        bgm.pause();
        return bgm.currentTime = 0.0;
      }
    });
    return $('#playBtn2').click(function() {
      var bgm;
      $(this).toggleClass('btn-danger');
      $(this).toggleClass('btn-primary');
      $(this).children('i').toggleClass('icon-stop');
      $(this).children('i').toggleClass('icon-play');
      bgm = document.getElementById('bgm2');
      if (bgm.paused) {
        return bgm.play();
      } else {
        bgm.pause();
        return bgm.currentTime = 0.0;
      }
    });
  });

}).call(this);
