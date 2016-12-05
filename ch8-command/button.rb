class SlickButton
  attr_reader :command

  def initialize(command)
    @command = command
  end

  # lots of button drawing and mgmt code omitted

  def on_button_push
    @command.execute if @command
  end
end

class SaveCommand
  def execute
    #
    # Save the current document
    #
  end
end

save_button = SlickButton.new(SaveCommand.new)
