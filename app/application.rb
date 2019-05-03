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
      item = @@items.find{|i| i.name == item_name}
# binding.pry
      resp.write item.price
    else
      # binding.pry
      resp.write "404 Route not found"
      resp.status = 404
    end

    resp.finish
  end
end
