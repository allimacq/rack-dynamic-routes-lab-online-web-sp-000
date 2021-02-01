class Application
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    if req.path.match(/items/)
      item_name = req.path.split("/items/").last
      
      p @@items.include(item_name)
      
      #if @@items.include?(item_name)
       # p item_name
      #else
       # resp.write "Item is not there"
        #resp.status = 400
      #end
      
    else
      resp.write "Route not found"
      resp.status = 404
    end
  end
  
end