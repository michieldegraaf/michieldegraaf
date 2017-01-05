(->
  $(".logo").click ->
    $("body").toggleClass "contrast"
    return
).call this
