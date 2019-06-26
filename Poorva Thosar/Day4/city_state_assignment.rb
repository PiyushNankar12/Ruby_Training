puts "Enter State ::"
state = gets.chomp

state_city = { "Maharashtra" => ["Pune", "Mumbai", "Nagpur"] ,
				 "Madhyapradesh" => ["Bhopal", "Indore", "Balapur"] }

all_cities = Proc.new { |el| puts state_city[el] }


case state
	when "Maharashtra"
		all_cities.call(state)
	when "Madhyapradesh"
		all_cities.call(state)
end 


#g = state_city.select(&all_cities, given_key)

#state_city.call(&all_cities,given_key)