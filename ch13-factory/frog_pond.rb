require_relative "frog"
require_relative "pond"

class FrogPond < Pond
  def new_animal(name)
    Frog.new(name)
  end
end
