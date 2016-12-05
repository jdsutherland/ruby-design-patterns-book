require_relative "bank_account"

class VirtualAccountProxy
  def initialize(&creation_block)
    @creation_block = creation_block
  end

  def subject
    @subject ||= @creation_block.call
  end

  def method_missing(meth, *args)
    puts "Delegating #{meth} message to subject."
    @subject.send(meth, *args)
  end
end

account = VirtualAccountProxy.new { BankAccount.new(10) }
arr = VirtualAccountProxy.new { Array.new }
