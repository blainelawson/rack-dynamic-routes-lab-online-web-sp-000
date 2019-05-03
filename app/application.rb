class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
    else
      resp.write "400 Item does not exist"
    end
  end
end
