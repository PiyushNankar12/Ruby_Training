puts 'Enter a Mobile Number in Format +XX XXXXXXXXXX'
phn=gets.chomp
if phn=~/^\+\d{2}\ \d{10}$/
	puts 'Valid Phone Number'
else 
	puts 'Invalid Phone Number'
end
puts 'Enter a email address'
email=gets.chomp
if email=~/^[\w\.\-]+\@[\w\.\-]+\.[\w]+$/i
	puts 'Valid Email'
else
	puts 'Invalid Email'
end
puts 'Enter Gender (M/F)'
gen=gets.chomp
if gen=~/^(M|F)$/
	puts 'Gender Accepted'
else
	puts 'Invalid Format'
end
puts 'Enter your Name'
name=gets.chomp
if name=~/^[a-zA-Z]+[\s]*[a-zA-Z]*[\s]*[a-zA-Z]*$/
	puts 'Valid Name'
else
	puts 'Invalid NAme'
end
puts 'Enter Any amount'
amt=gets.chomp
if amt =~/^[\-]*[\d]+[\.]*[\d]*$/ 
	puts 'Valid Amount'
else
	puts 'Invalid Amount'
end