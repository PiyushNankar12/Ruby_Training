class SomeClass
end


# method 1  :: By adding module nad incuding or extending to it
module AdditionalMethods
  def new_method
    "do some things"
  end
end

obj = SomeClass.new
obj.extend(AdditionalMethods)

puts obj.new_method

# method 2

obj1 = SomeClass.new

def obj.new_method1
  "do some things1"
end

puts obj.new_method1

puts "All methods of a class are :: #{SomeClass.methods}"