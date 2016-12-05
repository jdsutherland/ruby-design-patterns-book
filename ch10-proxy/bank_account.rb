class BankAccount
  attr_reader :balance

  def initialize(starting_balance = 0)
    @balance = starting_balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end
end

class BankAccountProxy
  def initialize(real_account)
    @subject = real_account
  end

  def method_missing(meth, *args)
    puts "Delegating #{meth} message to subject."
    @subject.send(meth, *args)
  end
end

account = BankAccount.new(100)
account.deposit(50)
account.withdraw(10)

proxy = BankAccountProxy.new(account)
proxy.deposit(50)
proxy.withdraw(10)
puts("account balance is now: #{proxy.balance}")
