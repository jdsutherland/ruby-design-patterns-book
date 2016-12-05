require_relative "command"

class CompositeCommand < Command
  def initialize
    @commands = []
  end

  def add_command(command)
    @commands << command
  end

  alias << add_command

  def remove_command(command)
    @commands.delete(command)
  end

  def execute
    @commands.each(&:execute)
  end

  def unexecute
    @commands.reverse.each(&:unexecute)
  end

  def description
    description = ""
    @commands.each { |cmd| description += cmd.description + "\n" }
    description
  end
end

cmds = CompositeCommand.new

cmds.add_command(CreateFile.new("file1.txt", "hello world\n"))
cmds.add_command(CopyFile.new("file1.txt", "file2.txt"))
cmds.add_command(DeleteFile.new("file1.txt"))

puts(cmds.description)
cmds.execute

sleep 1.5
cmds.unexecute
