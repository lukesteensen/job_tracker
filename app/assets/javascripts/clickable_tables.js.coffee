$ ->
  $(".table tr").bind "click", (event) ->
    that = $(this)
    if that.attr("rel")
      window.location.href = that.attr("rel")

