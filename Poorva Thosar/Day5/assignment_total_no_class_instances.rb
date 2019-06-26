class Car
    @make
    @@wheels = 4
    @@car_count = 0

    def initialize(make)
        @make = make
    end

    def self.wheels
        @@wheels
    end

    def self.IncrCarCount
        @@car_count = @@car_count + 1
    end
 
    def self.carCount
        @@car_count
    end

    attr_accessor :make
    attr_accessor :car_count
end

#outside the class

option = 'C'

while "C"== option 
	puts "Enter C to create new Car"
    puts "Enter E to exit"
     
    option = gets.chomp 

	if "C"== option
		puts "Car Added"
		puts "Enter Car Name - "
		civic = Car.new(gets.chomp)
		puts Car.wheels
		Car.IncrCarCount
	#else
	#	break	
	end
end

print "car count is "
puts Car.carCount

