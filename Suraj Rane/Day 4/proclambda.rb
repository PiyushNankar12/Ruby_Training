l=->{
	puts 'Hello I am using Lambda'
	return
}

p=Proc.new{
	puts 'Hello I am Using Proc'
	return
}
def lambda_return(l)
	puts 'Before call'
	l.call
	puts 'After Call'
end
def proc_return(p)
	puts 'Before call'
	p.call
	puts 'After Call'
end

lambda_return(l)
proc_return(p)