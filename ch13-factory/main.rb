require_relative "jungle_organism_factory"
require_relative "pond_organism_factory"
require_relative "habitat"

jungle = Habitat.new(1, 4, JungleOrganismFactory.new)
jungle.simulate_one_day

pond = Habitat.new(2, 4, PondOrganismFactory.new)
pond.simulate_one_day
