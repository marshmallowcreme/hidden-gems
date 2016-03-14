# app/assets/javascripts/app.search.coffee


class App.Search
  constructor: (@el) ->
    # intialize some stuff
    completer = @el.geocomplete()
    $.ajax 
      url: "http://ipinfo.io"
      dataType: "jsonp"
      success: (data, response) ->
        console.log(data.city, data.region)
        completer.val(data.city + ", " + data.region)
      
  render: ->

$(document).on "page:change", ->
  return unless $(".search.index").length > 0
  search = new App.Search $("#gmaps-search")
