class Computer
  attr_accessor :display
  attr_accessor :motherboard
  attr_reader   :drives

  def initialize(display = :crt, motherboard = Motherboard.new, drives = [])
    @display = display
    @motherboard = motherboard
    @drives = drives
  end

  def computer
    raise "Not enough memory" if @computer.motherboard.memory_size < 250
    raise "Too many drives" if @computer.drives.size > 4
    hard_disk = @computer.drives.find {|drive| drive.type == :hard_disk}
    raise "No hard disk." unless hard_disk
    @computer
  end
end

class CPU
  # cpu stuff
end

class BasicCPU < CPU
  # stuff
end

class TurboCPU < CPU
  # stuff
end

class Motherboard
  attr_accessor :cpu, :memory_size

  def initialize(cpu = BasicCPU.new, memory_size = 1000)
    @cpu = cpu
    @memory_size = memory_size
  end
end

class Drive
  attr_reader :type, :size, :writable

  def initialize(type, size, writable)
    @type = type
    @size = size
    @writable = writable
  end
end

class DesktopComputer < Computer
  # Lots of interesting desktop details omitted...
end

class LaptopComputer < Computer
  def initialize(motherboard = Motherboard.new, drives = [])
    super(:lcd, motherboard, drives)
  end

  # Lots of interesting laptop details omitted...
end
