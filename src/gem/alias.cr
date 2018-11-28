module Gem
  alias Handler = (Gem::Request, Gem::Response) ->
  alias Routes = Hash(String, Handler)
end