$(document).ready ()->
    blur_me = (x, default_val) -> 
      if x.val() == ''
        x.val(default_val)
        x.attr('style', 'color:#C9C9C9;')

    focus_me = (x, default_val) ->
      if x.val() == default_val
        x.val('')
        x.attr('style', 'color:#000;')

    $("#vul").focus () ->
      focus_me($("#vul"), 'Examples: Silver Bullets, Garlic, CO2, Red Meat, Carrots.')

    $("#vul").blur () ->
      blur_me($("#vul"), 'Examples: Silver Bullets, Garlic, CO2, Red Meat, Carrots.')