def phone(str)
	if(str=~ /^\d{10}$/)
		puts "valid phone number"
	else
		puts "invalid phone number"
	end
end
def amount(x)
	if(x=~ /^\d{1,}(\.){0,1}(\d)*$/)
		puts "valid amount"
	else
		puts "invalid amount"
	end
end
def e_mail(x)
	if(x=~ /^[a-zA-Z0-9\.\-\_]{1,}\@[a-zA-Z0-9\.\-\_]{1,}\.[a-zA-Z]{2,5}$/)
		puts "valid email"
	else
		puts "invalid email"
	end
end
def name(x)
	if(x=~ /^[A-Z][a-z]{0,}(\ )*[A-Z]{0,1}[a-z]{0,}(\ )*[A-Z]{0,1}[a-z]{0,}$/)
		puts "valid name"
	else
		puts "invalid name"
	end
end
def gender(x)
	if(x=~ /^[M,F]$/)
		puts "valid gender"
	else
		puts "invalid gender"
	end
end
puts "please Enter What do you want to do"
puts "1.Phone number\n 2.Name\n 3.E-Mail\n 4.Amount\n 5.Gender"
j=gets.chomp
case j
	when "1"
		puts "Please enter phone number"
		x=gets
		phone(x)
	when "2"
		puts "Please enter Name"
		x=gets
		name(x)
	when "3"
		puts "Please enter E-Mail"
		x=gets
		e_mail(x)
	when "4"
		puts "Please enter Amount"
		x=gets
		amount(x)
	when "5"
		puts "Please enter the gender"
		x=gets
		gender(x)
end

