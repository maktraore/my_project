require "faker"

class Employee
  attr_reader :first_name, :last_name, :salary
  # attr_writer :active
  attr_accessor :active

  def initialize(input_hash)
    @first_name = input_hash[:first_name] ||= "Peter"
    @last_name = input_hash[:last_name] ||= "Pan"
    @salary = input_hash[:salary] ||= 1
    @active = input_hash[:active] ||= false
  end

  def full_name
    if @last_name[-1] == "s"
      "#{@first_name} #{@last_name}, Esquire"
    else
      "#{@first_name} #{@last_name}"
    end
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes $#{@salary} a year."
  end

  def give_annual_raise
    @salary = @salary * 1.05
  end


end

employee1 = Employee.new({active: true, last_name: "Morco", salary: 1000000})
employee2 = Employee.new(first_name: "Andy", salary: 100000, active: true)

employees = []
100.times do
  employees << Employee.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, salary: Faker::Number.number(8), active: true )
end

employees.each do |employee|
  puts employee.full_name
  puts employee.salary
end