require_relative './rolodex.rb'
require_relative './contact.rb'


class CRM
	attr_reader :name

	def initialize(name)
		@name = name
		@rolodex = Rolodex.new
	end

	def print_main_menu
		puts "\n --- Main Menu ---"
		puts "[1] Add a contact"
		puts "[2] Modify a contact"
		puts "[3] Display all contacts"
		puts "[4] Display one contact"
		puts "[5] Display all instances of an attribute"
		puts "[6] Delete a contact"
		puts "[7] Exit"
		print "\nPlease select a number: "
	end

	def main_menu
		puts "\nWelcome to #{@name}!\n"

		loop do
			print_main_menu
			input = gets.chomp.to_i
			choose_option(input)
			return if input == 7
		end
	end

	def choose_option(option)
		case option
		when 1 then add_contact
		when 2 then modify_contact
		when 3 then display_contacts
		when 4 then display_contact
		when 5 then display_attribute
		when 6 then delete_contact
		when 7 
			puts "\nGoodbye!\n "
			return
		else 
			puts "\nIncorrect Option. Try again."
		end
	end

	def add_contact
		puts "Provide contact details: "
		print "First Name: "
		first_name = gets.chomp.capitalize
		print "Last Name: "
		last_name = gets.chomp.capitalize
		print "Email: "
		email = gets.chomp 
		print "Note: "
		note = gets.chomp

		@contact = Contact.new(first_name, last_name, email, note)
		@rolodex.add_contact(@contact)
		@rolodex.display_contact(@contact)

	end

	def modify_contact
	
		puts "Enter the ID number of the contact you want to modify: "
		modify_id = gets.chomp.to_i
		@rolodex.modify_a_contact(modify_id)
		


	end

	def display_contacts
		@rolodex.contacts.each do |x|
			puts "#{@rolodex.display_id(x)}: "
			puts "First name: #{x.first_name},\t\tLast Name: #{x.last_name}, \nEmail: #{x.email}, \tNote: #{x.note}\n\n"
		end
	end

	def display_contact
		
		puts "Enter the ID of the contact you wish to display: "
		id = gets.chomp.to_i
		
		if (contact = @rolodex.display_one(id))
			puts contact
		else
			puts "There is no contact with that ID"
		end
	end


	def display_attribute

		puts "\nEnter an attribute to display: \n1 = First Name \n2 = Last Name \n3 = Email \n4 = Notes"
		data = gets.chomp.to_i
		@rolodex.attributes(data)
			
	end

	def delete_contact
		
		puts "Enter the ID of the contact you wish to delete: "
		delete_id = gets.chomp.to_i
		@rolodex.delete_a_contact(delete_id)
	end


	def add_sample_data
		@rolodex.add_contact(Contact.new("Jimmy", "Bean", "jb101@sample.com", "He smells like wine."))
		@rolodex.add_contact(Contact.new("Vinyl", "Marmet", "vmarmet@sample.com", "Drinks a lot of soy."))
		@rolodex.add_contact(Contact.new("Harry", "McGuaiver", "harmac@sample.com", "Smokes menthols."))
		@rolodex.add_contact(Contact.new("Billy-jean", "King", "rocknroll@sample.com", "likes tennis."))
	end
	
end

bitmaker = CRM.new("Bitmaker Labs CRM")
bitmaker.add_sample_data
bitmaker.main_menu

# puts bitmaker.name