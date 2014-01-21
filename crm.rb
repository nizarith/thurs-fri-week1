class CRM

	def self.main_menu
  	puts "[1] Add a new contact"
  	puts "[2] Modify an existing contact"
  	puts "[3] Delete a contact"
  	puts "[4] Display all the contacts"
  	puts "[5] Display an attribute"
  	puts "[6] Exit"
  	puts "Please enter a number: "
	end

	def self.main
  	main_menu
  	user_choice = gets.to_i
  	call_option(user_choice)
	end

	def self.option(user_choice)

		if user_choice == 1
			@rolodex.add
			main

		elsif user_choice == 2
			@rolodex.mod
			main

		elsif user_choice == 3
			@rolodex.del
			main

		elsif user_choice == 4
			@rolodex.disp_all
			main

		elsif user_choice == 5
			@rolodex.disp_attr
			main

		elsif user_choice == 6
			exit
			main

		else
			main

	end

	def exit
		puts "Thank you for using CRM."

end



