require_relative "check_summing_writer"
require_relative "numbering_writer"
require_relative "simple_writer"
require_relative "writer_decorator"

class TimeStampingWriter < WriterDecorator
  def write_line(line)
    @real_writer.write_line("#{Time.new}: #{line}")
  end
end

writer = CheckSummingWriter.new(
  TimeStampingWriter.new(NumberingWriter.new(SimpleWriter.new("final.txt"))),
)
writer.write_line("Hello out there")
writer.close
