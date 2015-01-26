class Rolodex

	attr_reader :contacts  

	def initialize
		@next_id = 1001
		@contacts = []
	end

	def add_contact(contact)
		contact.id = @next_id
		@contacts << contact
		@next_id += 1
	end

	def display_one(id)
		contacts.each do |x|
		  return x if x.id == id 
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
