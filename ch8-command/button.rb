class SlickButton
  attr_reader :command

  def initialize(&block)
    @command = block
  end

  # lots of button drawing and mgmt code omitted

  def on_button_push
    @command.call if @command
  end
end

save_button = SlickButton.new do
  #
  # Save the current document
  #
end
