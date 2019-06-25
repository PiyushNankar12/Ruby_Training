def mail_validate(mail)
	if /[a-zA-Z0-9\.\-\_]{1,}@[a-zA-Z].[a-z]{2,}/ =~ mail
		print "Valid email id!!!\n"
	else
		print "Invalid email id!!!\n"
	end
end

print "Enter the email - id : \n"
mail = gets
mail_validate(mail)

