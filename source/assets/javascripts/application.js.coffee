# $ ->
#   $('a[href*="#"]:not([href="#"])').click ->
#     if location.pathname.replace(/^\//, '') == @pathname.replace(/^\//, '') and location.hostname == @hostname
#       target = $(@hash)
#       target = if target.length then target else $('[name=' + @hash.slice(1) + ']')
#       if target.length
#         $('html, body').animate { scrollTop: target.offset().top }, 800, 'easeOutExpo'
#         return false
#     return
#   return

(->
  $(".logo").click ->
    $("body").toggleClass "contrast"
    return
).call this
