require_relative "duck"
require_relative "pond"
require_relative "water_lily"

class DuckWaterLilyPond < Pond
  def new_organism(type, name)
    case type
    when :animal
      Duck.new(name)
    when :plant
      WaterLily.new(name)
    else
      raise "Unknown organism type: #{type}"
    end
  end
end
