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

	# def find_contact_by_id(id)
	# 	contacts.each do |contact|
	# 		if contact.id == id
	# 			return contact
	# 		else
	# 			return "No ID"
	# 		end
	# 		display
	# 	end
	# end
	def find_contact(id)
		@contacts.detect { |x| x.id == id} 

				# puts "#{x.first_name} #{x.last_name}"
	
			# else		
				 # puts "There is no user with that id."
			# end
		
	end

	def display_id(contact)
		print "#{contact.id}"
	end

	def display_contact(contact)
		puts "New contact added: #{contact.first_name}, #{contact.last_name}!"
		puts "#{contact.id} is your id number."
	end

end
