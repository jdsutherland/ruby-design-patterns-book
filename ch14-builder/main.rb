require_relative "computer"
require_relative "computer_builder"

# Build a cpu
motherboard = Motherboard.new(TurboCPU.new, 4000)

# ... and drive, CD writer, DVD
drives = []
drives << Drive.new(:hard_drive, 200000, true)
drives << Drive.new(:cd, 760, true)
drives << Drive.new(:dvd, 4700, false)

computer = Computer.new(:lcd, motherboard, drives)
# tedious to "build" a Computer object

# using Builder
builder = ComputerBuilder.new
builder.turbo
builder.add_cd(true)
builder.add_dvd
builder.display = :lcd
builder.add_hard_disk(100000)
