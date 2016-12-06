require_relative "duck"
require_relative "frog"

class Pond
  def initialize(number_animals)
    @animals = []
    number_animals.times do |i|
      animal = new_animal("Animal#{i}")
      @animals << animal
    end
  end

  def new_animal(_name)
    raise NotImplementedError, "This #{self.class} cannot respond to:"
  end

  def simulate_one_day
    @animals.each(&:speak)
    @animals.each(&:eat)
    @animals.each(&:sleep)
  end
end
