require "forwardable"

# Decorator
class WriterDecorator
  extend Forwardable

  def_delegators :@real_writer, :write_line, :pos, :rewind, :close

  def initialize(real_writer)
    @real_writer = real_writer
  end
end
