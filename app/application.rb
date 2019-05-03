require 'pry'

class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
# binding.pry
    if req.path.match(/items/)
      binding.pry
      item_name = req.path.split("/items/").last
      item = Item.all.find{|i| i == item_name}

      resp.write item
    else
      resp.write "400 Item not found"
    end
  end
end
