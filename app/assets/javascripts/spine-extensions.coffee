 #= require spine

# jQuery form serializer
if jQuery
  jQuery.fn.serializeForm = ->
    result = {}
    for item in jQuery(@).serializeArray()
      result[item.name] = item.value
    result

# Controller view rendering helpers
Spine.Controller.include
  view: (name) ->
    protoString = @constructor.toString().match(/^function ([^\(]+)/)[1] # Blogs
    areaName = protoString.toLowerCase() # blogs
    JST["app/views/#{areaName}/#{name}"]

  generate: (name, data) -> @view(name)(data)

  htmlify: (name, data) -> @html @generate(name, data)

 
