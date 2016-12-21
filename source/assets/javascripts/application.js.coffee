(->
  $(".logo").click ->
    $("body").toggleClass "contrast"
    return
  $(document).ready ->
    audio = undefined
    audio = $(".click")[0]
    $(".logo").mousedown ->
      audio.play()
      return
    $(".logo").mouseup ->
      audio.play()
      return
    return
  return
).call this
