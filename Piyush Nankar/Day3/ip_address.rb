def ip_address?(str)
  
  if((str =~ /^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}$/))
  	return 1
  else
  	return 0
  end
end
puts "Please Enter the ip address"
x=gets
z=ip_address?(x)
if(z==0)
	return
end
x.split(",")
y=[]
i=0
while x[i]!= "." do 
     y<<x[i]
	 i+=1
end
num=0
i-=1
j=0
while j<=i do
	num=num*10+y[j].to_i
    j+=1
end
case num
	when 1..127
		puts "class A"
	when 127..192
		puts "class B"
	when 192..224
		puts "class C"
	when 224..239
		puts "class D"
	else 
		puts "Invalid ip_address"
end