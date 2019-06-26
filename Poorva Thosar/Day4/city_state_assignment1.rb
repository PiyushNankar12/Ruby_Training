puts "Enter State ::"
state = gets.chomp

state_city = { "Maharashtra" => ["Pune", "Mumbai", "Nagpur"] ,
				 "Madhyapradesh" => ["Bhopal", "Indore", "Balapur"] }

all_cities = Proc.new { |el| puts state_city[el] }


if state_city.keys.include?(state)
		all_cities.call(state)
else
		puts "No match for keys"
end 


#g = state_city.select(&all_cities, given_key)

#state_city.call(&all_cities,given_key)