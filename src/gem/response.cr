require "http/server"

module Gem
  class Response
    def initialize(@response : HTTP::Server::Response)
    end

    def send(data)
      @response.print data
    end
  end
end
