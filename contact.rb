class Contact
	attr_accessor :firstname :lastname :email :notes

	def initialize(firstname, lastname, email, notes)
		@firstname = firstname
		@lastname = lastname
		@email = email
		@notes = notes
	end

end