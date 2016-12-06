require_relative "algae"
require_relative "jungle"
require_relative "habitat"
require_relative "water_lily"

# frog_pond = Pond.new(1, Frog, 1, Algae)
# frog_pond.simulate_one_day

# duck_pond = Pond.new(1, Duck, 1, WaterLily)
# duck_pond.simulate_one_day

jungle = Habitat.new(1, Tiger, 4, Tree)
jungle.simulate_one_day

pond = Habitat.new(2, Duck, 4, WaterLily)
pond.simulate_one_day
