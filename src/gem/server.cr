require "http/server"

class Gem::Server < Gem::Router
  def initialize()
    super()

    @server = HTTP::Server.new do |context|
      req = Gem::Request.new context.request
      res = Gem::Response.new context.response

      if(@routes[req.method][context.request.path]?)
        @routes[req.method][context.request.path].call req, res
      elsif(@routes["ALL"][context.request.path]?)
        @routes["ALL"][context.request.path].call req, res
      elsif (@routes[req.method]["*"]?)
        @routes[req.method]["*"].call req, res
      else
        res.send "404 Error"
      end
    end
  end
  
  def listen(port)
    @server.listen port
  end
end
