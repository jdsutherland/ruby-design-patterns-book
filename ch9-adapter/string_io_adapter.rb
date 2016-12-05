require_relative "encrypter"

class StringIOAdapter
  def initialize(string)
    @string = string
    @position = 0
  end

  def getbyte
    raise EOFError if eof?
    ch = @string.getbyte(@position)
    @position += 1
    ch
  end

  def eof?
    @position >= @string.length
  end
end

encrypter = Encrypter.new("XYZZY")
reader = StringIOAdapter.new("We attack at dawn")
writer = File.open("out.txt", "w")
encrypter.encrypt(reader, writer)
