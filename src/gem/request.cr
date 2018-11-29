require "http/server"

class Gem::Request
  @method : String

  def initialize(@request : HTTP::Request)
    @method = @request.method
  end

  def method
    @method
  end
end
