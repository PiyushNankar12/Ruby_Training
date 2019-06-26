def block(name)
	puts name
	yield 'yash'
end

block('yash') {|name| puts name}

