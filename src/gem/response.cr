require "http/server"

class Gem::Response
  def initialize(@response : HTTP::Server::Response)
  end

  def send(data)
    @response.print data
  end
end
