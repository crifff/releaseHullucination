$ ->
  bgm = new Audio
  el = ""
  $(bgm).bind 'loadstart',(e)->
    console.log 'loadstart'
    $(el).children('i').removeClass('icon-play').addClass('icon-refresh')
  .bind 'loadeddata',(e)->
    console.log 'loadeddata'
    $(el).children('i').removeClass('icon-play').addClass('icon-refresh')
    $(el).children('i').removeClass('icon-refresh').addClass('icon-play')
    this.play()
    button_open $(el)
  .bind 'canplay',(e)->
    console.log 'canplay'

 
  if bgm.canPlayType 'audio/mp3'
    ext = '.mp3'
  else
    ext = '.ogg'

  console.log bgm
  console.log 'ext:'+ext

  $('.play_music').click ->
    btn = $(this)
    el = this
    if btn.hasClass 'btn-primary'
      src = (btn.attr 'data-src') + ext
      bgm.src = src

      $('.play_music').each ->
        button_close $(this), btn
      if navigator.userAgent.match(/(iPad|iPhone|iPod)/i)
        bgm.play()
    else
      bgm.pause()
      bgm.currentTime = 0
      button_close(btn)


    #bgm = document.getElementById('bgm1')
  
  button_close = (btn,exlude=false)->
    if exlude and btn.attr('data-src')==exlude.attr 'data-src'
    else
    btn.removeClass('btn-danger').addClass('btn-primary').children('i').removeClass('icon-stop').addClass('icon-play')

  button_open = (btn)->
    btn.removeClass('btn-primary').addClass('btn-danger').children('i').removeClass('icon-play').addClass('icon-stop')
  return

