require_relative "duck_pond"
require_relative "frog_pond"

duck_pond = DuckPond.new(3)
duck_pond.simulate_one_day

frog_pond = FrogPond.new(3)
frog_pond.simulate_one_day
