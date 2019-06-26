class Users
	@@count=0
	@@name=[]

	def initialize(name)
		@nam=name
		@@count+=1
		@@name.push(name)
	end

	def self.count
		@@count
	end
	def self.names
		@@name
	end

end

while 1
	puts "Enter name of user : "
	name = gets.chomp
	object = Users.new(name)
	puts "Do you want to continue (y/n) :"
	choice = gets.chomp
	if choice == 'y'
		next
	else
		break
	end
end
# object = Users.new('Yash')
# object1 = Users.new('Piyush')
# object2 = Users.new('Suraj')
# object3 = Users.new('Poorva')
puts "Total users = #{Users.count}\n"
puts "Names of Users = #{Users.names}\n"
