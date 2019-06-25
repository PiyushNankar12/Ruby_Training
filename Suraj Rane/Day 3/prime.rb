print("Enter a number")
inp=gets.chomp.to_i
flag=0
for i in (2..inp-1)
	if inp%i==0
		flag=1
		break
	end
end
if flag==1
	print(inp," No\n")
else
	print(inp," Yes\n")
end