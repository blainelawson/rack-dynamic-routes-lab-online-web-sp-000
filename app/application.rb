require 'pry'

class Application
  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
# binding.pry
    if req.path.match(/items/)
      # binding.pry
      item_name = req.path.split("/items/").last
      item = Item.all.find{|i| i == item_name}

      resp.write item
    else
      # binding.pry
      resp.write "404 Route not found"
      resp.status = 404
    end

    resp.finish
  end
end
