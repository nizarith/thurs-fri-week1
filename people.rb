class Parent
	attribute :name
	puts ""
end


class Student < parent
	def learn
		puts "I get it!"
	end
end

class Instructor < parent
	def teach
		puts "Everything in Ruby is an Object"
	end
end
