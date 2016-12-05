class BritishTextObject < TextObject
  attr_reader :string, :size_mm, :colour

  # ...
end

# reopen class
class BritishTextObject
  def color
    colour
  end

  def text
    string
  end

  def size_inches
    size_mm / 25.4
  end
end

# -------------------------------------------------------------------
# A different approach would be to modify class instances at run-time

bto = BritishTextObject.new("hello", 50.8, :blue)

# Modifiy the 'bto' instance of the BritishTextObject class
class << bto
  def color
    colour
  end

  def text
    string
  end

  def size_inches
    size_mm / 25.4
  end
end

# Alternative syntax
def bto.color
  colour
end

def bto.text
  string
end

def bto.size_inches
  size_mm / 25.4
end
