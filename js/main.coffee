$(".logo").click ->
  $("body").toggleClass "fart"
  return

$(document).ready ->
  audio = $(".click")[0]
  $(".logo").mousedown ->
    audio.play()
    return
  $(".logo").mouseup ->
    audio.play()
    return
  return
