require_relative "computer"

# Build a cpu
motherboard = Motherboard.new(TurboCPU.new, 4000)

# ... and drive, CD writer, DVD
drives = []
drives << Drive.new(:hard_drive, 200000, true)
drives << Drive.new(:cd, 760, true)
drives << Drive.new(:dvd, 4700, false)

computer = Computer.new(:lcd, motherboard, drives)
# tedious to "build" a Computer object
