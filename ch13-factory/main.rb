require_relative "algae"
require_relative "frog"
require_relative "habitat"
require_relative "jungle"
require_relative "organism_factory"

jungle = Habitat.new(1, 4, OrganismFactory.new(Tree, Tiger))
jungle.simulate_one_day

pond = Habitat.new(2, 4, OrganismFactory.new(Algae, Frog))
pond.simulate_one_day
