class Contact
	attr_accessor :id, :first_name, :last_name, :email, :note

	def initialize(first_name, last_name, email, note)
		@first_name = first_name
		@last_name = last_name
		@email = email
		@note = note
	end

	def to_s
		puts "First name: #{@first_name},\t\tLast Name: #{@last_name}, \nEmail: #{@email}, \tNote: #{@note}\n"
	end
end

	