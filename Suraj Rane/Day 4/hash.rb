citylist={"Maharashtra"=>['Pune','Mumbai','Nashik','Dhule'],"Andhra Pradesh"=>['Adilabad','Anantapur','Chittoor','Kakinada','Guntur'],"Harayana"=>['Ambala','Bhiwani','Faridabad','Fatehabad','Gurgaon']}


abc=Proc.new{ |state|
	puts citylist[state]
}
# abc.call(state)

xyz=->(state){
	puts citylist[state]
}
# xyz.call('Andhra Pradesh')
puts "Enter\n1)Maharashtra\n2)Andhra Pradesh\n3)Harayana\n"
st=gets.chomp.to_i
case st
when 1
	abc.call('Maharashtra')
when 2
	xyz.call('Andhra Pradesh')
when 3
	abc.call('Harayana')
end