require "etc"

class BankAccountProtectionProxy
  def initialize(real_object, owner_name)
    @real_object = real_object
    @owner_name = owner_name
  end

  def method_missing(meth, *args)
    puts "Delegating #{meth} message to subject."
    @subject.send(meth, *args)
  end

  def check_access
    if Etc.getlogin != @owner_name
      raise "Illegal access: #{Etc.getlogin} cannot access account."
    end
  end
end
