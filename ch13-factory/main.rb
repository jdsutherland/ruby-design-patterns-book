require_relative "pond"
require_relative "algae"
require_relative "water_lily"

frog_pond = Pond.new(1, Frog, 1, Algae)
frog_pond.simulate_one_day

duck_pond = Pond.new(1, Duck, 1, WaterLily)
duck_pond.simulate_one_day
