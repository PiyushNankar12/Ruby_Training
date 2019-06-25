def ip_validate(ip)
	arr=ip.split('.')
	num=arr[0].to_i	
		#ip++
	#print num
	num1=arr[1].to_i
	num2=arr[2].to_i
	num3=arr[3].to_i
	if num>=1 && num<=255 && num1>=0 && num1<=255 && num2>=0 && num2<=255 && num3>=0 && num3<=255
		print "Valid ip!!\n"
	else
		print "Invalid ip!!"
		return
	end
	if num>=1 && num<=126
		print "Class A!! \n"
	elsif num>=128 && num<=191 
		print "Class B!!\n"
	elsif num>=192 && num<=223
		print "Class C!!\n"
	elsif num>=224 && num<=239
		print "Class D!!\n"
	else
		print "Class E!!\n"
	end
end
print "Enter ip :\n"
ip = gets
ip_validate(ip)

# 	Class A
# 1.0.0.1 to 126.255.255.254
# Class B
# 128.1.0.1 to 191.255.255.254
# Class C
# 192.0.1.1 to 223.255.254.254
# Class D
# 224.0.0.0 to 239.255.255.255