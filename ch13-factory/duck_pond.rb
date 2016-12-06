require_relative "duck"
require_relative "pond"

class DuckPond < Pond
  def new_animal(name)
    Duck.new(name)
  end
end
