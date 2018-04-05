(->
  $(".logo span").click ->
    $("body").toggleClass "contrast"
    return
).call this

# $(document).ready ->
#   $('.list-main li').mouseenter((e) ->
#     x = e.pageX - ($(this).offset().left)
#     $(this).css('z-index', '20').children('.tooltip').css
#       'margin-left': x + 20
#       'display': 'block'
#     return
#   ).mousemove((e) ->
#     x = e.pageX - ($(this).offset().left)
#     $(this).children('div.tooltip').css
#       'margin-left': x + 20
#     return
#   ).mouseleave ->
#     $(this).css('z-index', '1').children('.tooltip').animate { 'opacity': 'hide' }, 'fast'
#     return
#   return
