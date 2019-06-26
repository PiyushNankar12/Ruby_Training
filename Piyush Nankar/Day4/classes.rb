class Piyush
	def initialize(name,age)
		puts "Piyush"
		@name=name
		#@age=age
		#puts @name
		puts "I am in Piyush"
	end
    #attr_reader :name, :age
    attr_accessor :name , :age
    def get()
    	return @age
    end
    def set(name)
    	@name=name
    end
    def name=(name)
    	@name=name;
    end
    def Change
    	@age=@age+15
    	return
    end
    def self.name
    	return "Josh"
    end
end

class String 
	def is_piyush?
		self=="piyush"
	end
end
class Shreyas < Piyush
	def initialize(std,name)
	    @std=std
	    #super
		puts "I am in Shreyas"
	end
end
obj1=Shreyas.new("Piyush",20)
obj1.name="Shreyas"
p obj1.name
#obj2=Piyush.new()

obj=Piyush.new("Piyush",20)
obj.name= "Suraj"
p=obj.get()
puts p
obj.set("Yugu")
q=obj.get()
puts q
print obj.name
obj.age=25
p obj.age
obj.Change()
p obj.get
q=Piyush.name
p q
l="Piyush"
p l.is_piyush?

