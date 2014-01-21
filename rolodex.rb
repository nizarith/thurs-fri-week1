require_relative 'contact'

class Rolodex

	def initiate
	 	contactarray = []
	end

	def add_contact
	 	contact = Contact.new(firstname, lastname, email, notes)
	 	contactarray << contact
	end

end