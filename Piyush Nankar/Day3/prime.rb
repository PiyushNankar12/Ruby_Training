def prime(x)
	p=2
   flag=1
   while p<x do
   	  if x%p==0
         puts "Number is not prime"
      	 flag=0
         break
      end
      p+=1
   end
   if flag==1
      puts "Number is prime"
   end
end

puts "Please enter the number"
x=gets.to_i
prime(x)
