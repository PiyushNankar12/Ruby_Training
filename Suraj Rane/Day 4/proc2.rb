def l(abc)
	puts 'Start'
	abc.call
	puts 'End'
end

def pr(xyz)
	puts 'Start'
	xyz.call
	puts 'End'
end

abc=->{ return 'Suraj Rane' }

xyz=Proc.new{return 'Suraj Rane'}

l(abc)
pr(xyz)