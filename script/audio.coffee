$ ->
  $('#playBtn1').click ->
    $(this).toggleClass('btn-danger')
    $(this).toggleClass('btn-primary')
    $(this).children('i').toggleClass('icon-stop')
    $(this).children('i').toggleClass('icon-play')

    bgm = document.getElementById('bgm1')
    if bgm.paused
      bgm.play()
    else
      bgm.pause()
      bgm.currentTime = 0.0

  $('#playBtn2').click ->
    $(this).toggleClass('btn-danger')
    $(this).toggleClass('btn-primary')
    $(this).children('i').toggleClass('icon-stop')
    $(this).children('i').toggleClass('icon-play')

    bgm = document.getElementById('bgm2')
    if bgm.paused
      bgm.play()
    else
      bgm.pause()
      bgm.currentTime = 0.0
