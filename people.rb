class Person
  attr_accessor :name

  def greeting
    puts "Hello, my name is #{name}."
  end

end

class Student < Person
  
  def learn
    puts "I get it!"
  end
end

student = Student.new
student.name = "Christina"
puts student.greeting


class Instructor < Person
  
  def teach
    puts "Everything in Ruby is an Object"
  end
end

instructor = Instructor.new
instructor.name = "Chris"
puts instructor.greeting