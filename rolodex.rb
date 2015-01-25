class Rolodex

	attr_reader :contacts  

	@@ids = 1001

	def initialize
		@contacts = []
	end

	def add_contact(contact)
		contact.id = @@ids
		@contacts << contact
		@@ids += 1
	end

	def find_contact_by_info(info)
		contacts.each do |x|
			if x.id == info 

				# return contact
			 # "First name: #{x.first_name}, Last name: #{x.last_name}, email: #{x.email}, note: #{x.note}"
			
			# elsif x.first_name == info
			# puts "First name: #{x.first_name}, Last name: #{x.last_name}, email: #{x.email}, note: #{x.note}"

			# elsif x.last_name == info
			# puts "First name: #{x.first_name}, Last name: #{x.last_name}, email: #{x.email}, note: #{x.note}"

			# elsif x.email == info
			# puts "First name: #{x.first_name}, Last name: #{x.last_name}, email: #{x.email}, note: #{x.note}"
			else		
				 "There is no user with that id."
			end
		end
	end

	def display_id(contact)
		print "#{contact.id}"
	end

	def display_contact(contact)
		puts "New contact added: #{contact.first_name}, #{contact.last_name}!"
		puts "#{contact.id} is your id number."
	end

end
