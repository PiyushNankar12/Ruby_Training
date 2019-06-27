def method1
	puts 'Suraj Rane'
end

alias_method :method2, :method1

method1
method2