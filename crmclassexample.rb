require_relative 'contact'
require_relative 'rolodex'

class CRM

	def print_main_menu
  	puts "[1] Add a new contact"
  	puts "[2] Modify an existing contact"
  	puts "[3] Delete a contact"
  	puts "[4] Display all the contacts"
  	puts "[5] Display an attribute"
  	puts "[6] Exit"
  	puts "Enter a number: "
	end

	def self.main_menu
  	print_main_menu
  	user_selected = gets.to_i
  	call_option(user_selected)
	end

end

class Contact
	attr_accessor :name, :age, :email
	attr_accessor :id

	def initiate(name, age, email)
		@name = name
		@age = age
		@email - email
		@id = id
	end

end


class Rolodex

	def initialize

		# creates array
		@contacts = []
		@id = 1000
	end

	def new_contact(name, age, email)
		@id += 1
		@contacts << Contact.new_contact(@id, name, age, email)
	end

	def find_contact(name)
		@contacts.each do |contact|
			return contact if contact.id == id

			if contact.id == id
				return contact
			end

			@contacts.each { |c| }
	end

end

app_start = CRM.new.main_menu