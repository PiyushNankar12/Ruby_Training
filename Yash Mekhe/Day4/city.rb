def city(state)
	print "Enter the state : \n1] Maharashtra\n2] Gujrat\n3] Madhya Pradesh\n4] Tamil Nadu\n5] Karnataka\n"
	name = gets.chomp.to_i
	case name
	when 1
		state.call("Maharashtra")
	when 2
		state.call("Gujrat")
	when 3
		state.call("Madhya Pradesh")
	when 4
		state.call("Tamil Nadu")
	when 5
		state.call("Karnataka")
	end
end

hash = { "Maharashtra" => ["Pune", "Beed", "Nagar"],
		 "Gujrat" => ["Surat", "Ahmedabad", "Gandhinagar"], 
		 "Madhya Pradesh" => ["Indore", "Ujjain", "Ratlam"], 
		 "Tamil Nadu" => ["Chennai","Vishakhapatnam"], 
		 "Karnataka" => ["Banglore","Manglore","Mysore"] }
hash2 = hash

state = Proc.new { |a| print "Cities in state #{a} are : #{hash[a]} \n" }
city(state)
