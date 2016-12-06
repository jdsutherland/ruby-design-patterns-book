require_relative 'simple_writer'

module TimeStampingWriter
  def write_line(line)
    super("#{Time.new}: #{line}")
  end
end

module NumberingWriter
  attr_reader :line_number

  def write_line(line)
    @line_number ||= 1
    super("#{@line_number}: #{line}")
    @line_number += 1
  end
end

class Writer
  def write(line)
    @f.write(line)
  end
end

w = SimpleWriter.new("out.txt")
w.extend(NumberingWriter)
w.extend(TimeStampingWriter)
w.write_line("hello")
