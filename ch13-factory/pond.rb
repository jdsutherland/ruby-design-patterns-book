require_relative "duck"

class Pond
  def initialize(number_ducks)
    @ducks = []
    number_ducks.times do |i|
      duck = Duck.new("Duck#{i}")
      @ducks << duck
    end
  end

  def simulate_one_day
    @ducks.each(&:speak)
    @ducks.each(&:eat)
    @ducks.each(&:sleep)
  end
end

pond = Pond.new(3)
pond.simulate_one_day
