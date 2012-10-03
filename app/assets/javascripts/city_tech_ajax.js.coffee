$(document).ready ->
  $("#add_city_button").bind "click", (event) ->
    name = $("#new_city").val()
    if name.length > 3
      $.ajax(
        type: "POST"
        url: '/cities'
        data:
          city:
            name: name
        success: (response) ->
          $("#job_city_ids").append(
            "<option value=\"#{ response.id }\">#{ response.name }</option>"
          )
          $("#new_city").val("")
        dataType: "json"
      )
    else
      alert "Invalid city name"

  $("#add_technology_button").bind "click", (event) ->
    name = $("#new_technology").val()
    if name.length > 3
      $.ajax(
        type: "POST"
        url: '/technologies'
        data:
          technology:
            name: name
        success: (response) ->
          $("#job_technology_ids").append(
            "<option value=\"#{ response.id }\">#{ response.name }</option>"
          )
          $("#new_technology").val("")
        dataType: "json"
      )
    else
      alert "Invalid technology name"

  $("#new_city, #new_technology").keypress (event) ->
    if event.keyCode == 13
      event.preventDefault()

