require_relative "algae"
require_relative "frog"
require_relative "pond"

class FrogAlgaePond < Pond
  def new_organism(type, name)
    case type
    when :animal
      Frog.new(name)
    when :plant
      Algae.new(name)
    else
      raise "Unknown organism type: #{type}"
    end
  end
end
