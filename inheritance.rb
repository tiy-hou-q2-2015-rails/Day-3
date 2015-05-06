class Person
  attr_accessor :name

  def greeting
    "Oh hai there, I'm on a couch watching Kelly Ripa. My name is #{name}"
  end
end

class Employee < Person
  def greeting
    "I'm in a meeting. Call you back later. BTW this is #{name}"
  end
end

class Boss < Employee
  def fire!(employee)
    "step into my office, #{employee.name}. Because you're fired!!!!!!11!!"
  end
end


fred = Person.new
fred.name = "freddie"

jwo = Employee.new
jwo.name = "jwo"

mason = Boss.new
mason.name = "Mason"

#
# [fred,jwo, mason].each do |human|
#   puts human.greeting
# end
#
#
# puts mason.fire! jwo


people = [fred,jwo, mason]
people.each do |person|
  # puts person.is_a? Boss # asking if you are a type
  # puts person.is_a? Employee # asking if you are a type

  # puts person.fire!(jwo) if person.is_a? Boss

  # duck typing
  # if it sounds like a duck, looks like a duck, it's prolly a duck

  puts person.fire!(jwo) if person.respond_to? :fire!


end
