require_relative "bank_account"

class VirtualAccountProxy
  def initialize(starting_balance = 0)
    @starting_balance = starting_balance
  end

  def deposit(amount)
    subject.deposit(amount)
  end

  def withdraw(amount)
    subject.withdraw(amount)
  end

  def balance
    subject.balance
  end

  def subject
    @subject ||= BankAccount.new(@starting_balance)
  end
end
