class Report
  attr_reader :title, :text
  attr_accessor :formatter

  def initialize(&formatter)
    @title = 'Monthly Report'
    @text =  ['Things are going', 'really, really well.']
    @formatter = formatter
  end

  def output_report
    @formatter.call(self)
  end
end

HTML_FORMATTER = lambda do |context|
  puts('<html>')
  puts('  <head>')
  puts("    <title>#{context.title}</title>")
  puts('  </head>')
  puts('  <body>')

  context.text.each do |line|
    puts("    <p>#{line}</p>" )
  end

  puts('  </body>')
  puts
end

# example calling html
report = Report.new &HTML_FORMATTER
report.output_report

report = Report.new do |context|
  puts("***** #{context.title} *****")
  context.text.each do |line|
    puts(line)
  end
end
