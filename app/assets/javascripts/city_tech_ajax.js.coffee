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
          $("#job_city_ids").prepend(
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
          $("#job_technology_ids").prepend(
            "<option value=\"#{ response.id }\">#{ response.name }</option>"
          )
          $("#new_technology").val("")
        dataType: "json"
      )
    else
      alert "Invalid technology name"

  $("#add_company_button").bind "click", (event) ->
    name = $("#new_company").val()
    if name.length > 3
      $.ajax(
        type: "POST"
        url: '/companies'
        data:
          company:
            name: name
        success: (response) ->
          $("#job_company_id").append(
            "<option value=\"#{ response.id }\">#{ response.name }</option>"
          )
          $("#new_company").val("")
          $("#job_company_id").val(response.id)
        dataType: "json"
      )
    else
      alert "Invalid company name"

  $("#new_city").keypress (event) ->
    if event.keyCode == 13
      event.preventDefault()
      $("#add_city_button").trigger "click"

  $("#new_technology").keypress (event) ->
    if event.keyCode == 13
      event.preventDefault()
      $("#add_technology_button").trigger "click"

  $("#new_company").keypress (event) ->
    if event.keyCode == 13
      event.preventDefault()
      $("#add_company_button").trigger "click"

