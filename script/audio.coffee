$ ->
  $('#playBtn').click ->
    $(this).toggleClass('btn-danger')
    $(this).toggleClass('btn-primary')
    $(this).children('i').toggleClass('icon-stop')
    $(this).children('i').toggleClass('icon-play')

    bgm = document.getElementById('bgm')
    if bgm.paused
      bgm.play()
    else
      bgm.pause()
      bgm.currentTime = 0.0
