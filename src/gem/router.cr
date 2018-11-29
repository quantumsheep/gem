class Gem::Router
  @routes = Hash(String, Gem::Routes).new

  def initialize()
    Gem::METHODS.each do |item|
      @routes[item] = Gem::Routes.new
    end

    @routes["ALL"] = Gem::Routes.new
  end

  def all(route : String, &cb : Gem::Handler)
    @routes["ALL"][route] = cb
  end

  def get(route : String, &cb : Gem::Handler)
    @routes["GET"][route] = cb
  end

  def head(route : String, &cb : Gem::Handler)
    @routes["HEAD"][route] = cb
  end
  
  def post(route : String, &cb : Gem::Handler)
    @routes["POST"][route] = cb
  end

  def put(route : String, &cb : Gem::Handler)
    @routes["PUT"][route] = cb
  end

  def delete(route : String, &cb : Gem::Handler)
    @routes["DELETE"][route] = cb
  end

  def options(route : String, &cb : Gem::Handler)
    @routes["OPTIONS"][route] = cb
  end

  def connect(route : String, &cb : Gem::Handler)
    @routes["CONNECT"][route] = cb
  end

  def trace(route : String, &cb : Gem::Handler)
    @routes["TRACE"][route] = cb
  end
end
