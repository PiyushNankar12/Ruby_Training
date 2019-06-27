def print_count(abc)
	count=10
	abc.call
end
count=5
abc=Proc.new{ puts count}

print_count(abc)
count=99
print_count(abc)
