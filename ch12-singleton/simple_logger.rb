class SimpleLogger
  attr_accessor :level

  ERROR   = 1
  WARNING = 2
  INFO    = 3

  def initialize
    @log = File.open("log.txt", "w")
    @level = WARNING
  end

  @@instance = self.new

  def self.instance
    @@instance
  end

  private_class_method :new

  def error(msg)
    @log.puts(msg)
    @log.flush
  end

  def warning(msg)
    @log.puts(msg) if @level >= WARNING
    @log.flush
  end

  def info(msg)
    @log.puts(msg) if @level >= INFO
    @log.flush
  end
end

# logger = SimpleLogger.new
# logger.level = SimpleLogger::INFO

# logger.info("Doing the first thing")
# logger.info("Doing the second thing")

logger1 = SimpleLogger.instance
logger2 = SimpleLogger.instance
SimpleLogger.instance.info("Computer wins chess game.")
SimpleLogger.instance.warning("AE-35 hardware failure predicted.")
SimpleLogger.instance.error("HAL-9000 malfunction, take emergency action!")
