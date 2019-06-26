class User
	@@count=0
	@@nam=[]
	def initialize(name)
		@name=name
		@coun=@@count
		@@count+=1
		@@nam<<name
	end
	def self.count
	 	@@count
	end
	def self.nam
	 	@@nam
	 end

	attr_accessor :name , :coun 
end

obj=User.new("Piyush")
obj1=User.new("Suraj")
obj2=User.new("Yash")
obj3=User.new("Poorva")
puts User.nam
print "Total Number of objects are #{User.count} \n"

