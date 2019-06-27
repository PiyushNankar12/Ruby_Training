class Student
	attr_accessor :name
	attr_accessor :age
	# attr_accessor :count
	# attr_accessor :list
	@@count=0
	@@list=[]
	def initialize(inp_name,inp_age)
				@name=inp_name
				@age=inp_age
				@@count+=1
				@@list.push(inp_name)
	end

	# def self.count
	# 	@@count
	# end
	# def self.list
	# 	@@list
	# end
end

s1=Student.new('Suraj',20)
s2=Student.new('Piyush',21)
s3=Student.new('Yash',25)
s4=Student.new('Poorva',20)
s5=Student.new('Rahul',23)
s6=Student.new('Rohit',22)

puts Student.class_variable_get(:@@count)
puts Student.class_variable_get(:@@list)



