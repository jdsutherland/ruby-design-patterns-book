# Ruby's Observable module doesn't support blocks, so we have to write our own
module Subject
  def initialize
    @observers = []
  end

  def add_observer(&observer)
    @observers << observer
  end

  def delete_observer(observer)
    @observers.delete(observer)
  end

  def notify_observers
    @observers.each { |observer| observer.call(self) }
  end
end

class Employee
  include Subject

  attr_reader :name
  attr_accessor :title, :salary

  def initialize(name, title, salary)
    super()
    @name = name
    @title = title
    @salary = salary
  end

  def salary=(new_salary)
    @salary = new_salary
    notify_observers
  end
end

fred = Employee.new("Fred", "Crane Operator", 30000.0)

# payroll
fred.add_observer do |changed_employee|
  puts("Cut a new check for #{changed_employee.name}!")
  puts("His salary is now #{changed_employee.salary}!")
end

fred.salary = 35000.0

# tax_man
fred.add_observer do |changed_employee|
  puts("Send #{changed_employee.name} a new tax bill!")
end

fred.salary = 34999.0
