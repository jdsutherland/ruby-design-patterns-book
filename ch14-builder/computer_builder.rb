require_relative "computer"

class ComputerBuilder
  attr_reader :computer

  def initialize
    @computer = Computer.new
  end

  def turbo(_has_turbo_cpu = true)
    @computer.motherboard.cpu = TurboCPU.new
  end

  def memory_size=(size_in_mb)
    @computer.memory_size = size_in_mb
  end

  # this allows us to make calls like:
  #
  # builder.add_turbo_and_harddisk
  # builder.add_turbo_and_dvd_and_harddisk
  def method_missing(name, *args)
    words = name.to_s.split("_")
    return super(name, *args) unless words.shift == 'add'
    words.each do |word|
      next if word                  == 'and'
      add_cd if word                == 'cd'
      add_dvd if word               == 'dvd'
      add_hard_disk(100000) if word == 'harddisk'
      turbo if word                 == 'turbo'
    end
  end
end
