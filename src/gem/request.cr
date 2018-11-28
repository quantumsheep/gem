require "http/server"

module Gem
  class Request
    @method : String

    def initialize(@request : HTTP::Request)
      @method = @request.method
    end

    def method
      @method
    end
  end
end
