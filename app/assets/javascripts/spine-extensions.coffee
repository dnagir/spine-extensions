 #= require spine
 
# Controller view rendering helpers
Spine.Controller.include
  view: (name) ->
    protoString = @constructor.toString().match(/^function ([^\(]+)/)[1] # Blogs
    areaName = protoString.toLowerCase() # blogs
    JST["app/views/#{areaName}/#{name}"]

  generate: (name, data) -> @view(name)(data)

 
