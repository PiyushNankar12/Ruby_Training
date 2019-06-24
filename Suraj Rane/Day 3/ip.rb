puts 'Enter IP address'
ip=gets.chomp
if ip=~/^\d{0,3}\.\d{0,3}\.\d{0,3}\.\d{0,3}$/
	case ip[0,3].to_i
	when 224..239
		puts 'Class D'
	when 192..223
		puts 'Class C'
	when 128..191
		puts 'Class B'
	when 1..127
		puts 'Class A'
	else
		puts 'Invalid IP'
	end
else
	puts 'Enter a Valid IP'
end
