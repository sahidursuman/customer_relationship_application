class Contact
	attr_accessor :id, :first_name, :last_name, :email, :note

	def initialize(first_name, last_name, email, note)
		@first_name = first_name
		@last_name = last_name
		@email = email
		@note = note
	end

	def to_s
		"First name: #{x.first_name},\t\tLast Name: #{x.last_name}, \nEmail: #{x.email}, \tNote: #{x.note}\n\n"
	end
end

