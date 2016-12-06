require_relative "duck_pond"
require_relative "duck_water_lily_pond"
require_relative "frog_algae_pond"
require_relative "frog_pond"

frog = FrogAlgaePond.new(3, 3)
frog.simulate_one_day

duck = DuckWaterLilyPond.new(3, 3)
duck.simulate_one_day
