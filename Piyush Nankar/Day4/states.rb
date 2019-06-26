sta_city={"Maharashtra"=>["Mumbai","Pune","Dhule","Nagpur"],
           "Gujrat"=>["Ahamdabad","Gandhinagar","Ahamadabad"],
           "Andhra"=>["Vijaywada","Gulbarga"],
           "Up"=>["Amethi","Raibareli","Varanasi","Kanpur","Mirzapur"]}
xyz=Proc.new{ |state| puts sta_city[state] }
abc=->(state){puts sta_city[state]}
#xyz.call("Maharashtra")
#abc.call("Andhra")
puts "Please enter the State whose city names you want to know"
puts " 1. Maharashtra \n 2. Gujrat \n 3. Andhra Pradesh \n 4. Uttar-Pradesh"
x=gets.to_i

case x
	when 1
		xyz.call("Maharashtra")
	when 2
		abc.call("Gujrat")
	when 3
		xyz.call("Andhra")
	when 4
		abc.call("Up")
end