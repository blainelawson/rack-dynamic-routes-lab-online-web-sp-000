require 'pry'

class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
# binding.pry
    if req.path.match(/items/)
      binding.pry
    else
      resp.write "400 Item not found"
    end
  end
end
