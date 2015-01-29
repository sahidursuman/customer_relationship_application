class Rolodex

	# attr_accessor :first_name :last_name :email :notes
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

	def attributes(data)
		@contacts.each do |contact|
			case data 

				when 1
				puts "#{display_id(contact)}: #{contact.first_name}"
				when 2
				puts "#{display_id(contact)}: #{contact.last_name}"
				when 3
				puts "#{display_id(contact)}: " + contact.email
				when 4
				puts "#{display_id(contact)}: " + contact.note
				else 
				puts "\n****Please enter a number 1-4!****\n"
				return display_attribute
			end			
		end

	end


	def modify_a_contact(modify_id)

	contacts.each do |x| 
	 if modify_id == x.id
		puts "Enter a new first name: "
		new_first = gets.chomp.capitalize
		x.first_name = new_first
		puts "Enter a new last name: "
		new_last = gets.chomp.capitalize
		x.last_name = new_last
		puts "Enter a new email: "
		new_email = gets.chomp
		x.email = new_email
		puts "Enter a new note: "
		new_note = gets.chomp
		x.note = new_note
		puts ""
		puts "Contact details Modified!"
	else 

		end
		
	end
	end

	def delete_a_contact(delete_id)

		contacts.delete_if { |x| x.id == delete_id}

	end


end
