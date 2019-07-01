load 'module.rb'

class Country
	include WorldBank
	prepend IMF
	attr_reader :gdp, :power_index, :economy_index,:name
	def initialize(inp_name,inp_gdp,inp_pwrindx,inp_econind)
		@name=inp_name
		@gdp=inp_gdp
		@power_index=inp_pwrindx
		@economy_index=inp_econind
	end

	def get_country_name
		puts "\nEnter Country Name\t"
		@name=gets.chomp
		while (@name!~/^[a-zA-Z]+[^0-9]$/)
			puts "Enter a valid country name"
			@name=gets.chomp
		end
	end

	def get_country_gdp
		puts "Enter GDP\t"
		@gdp=gets.chomp
		while (@gdp!~/\d{1}[\.]*[\d{1}]+/)
			puts 'Enter a Valid GDP'
			@gdp=gets.chomp.to_i
		end
		@gdp=@gdp.to_i
	end

	def get_powerindex
		puts "Enter Power Index(0.0000 - 1.0000)\t"
		@power_index=gets.chomp.to_i
		while (@power_index=~/^\d{1}\.\d{1,}$/)
			puts "Enter a valid Power index"
			@power_index=gets.chomp.to_i
		end
		if @power_index>1 || @power_index<0
			puts 'Please enter the power index in 0-1 range'
			@power_index=gets.chomp.to_i
		end
	end

	def get_economyindex
		puts "Enter Economy Index\t"
		@economy_index=gets.chomp.to_i
		while (@economy_index=~/^\d{1,}$/)
			puts "Enter a valid Power index"
			@power_index=gets.chomp.to_i
		end
	end 

	def get_values
		self.get_country_name
		self.get_country_gdp
		self.get_powerindex
		self.get_economyindex
	end
end

c=Country.new(nil,0,0,0)
c.get_values
system "clear"
while(true)
	puts "\n1)Apply For World Bank Loan\n2)Check for UN membership\n3)Check for IMF membership\n4)Exit"
	ch=gets.chomp.to_i
	case ch
	when 1
		c.check_for_loan(c.gdp)
	when 2
		c.extend(UNSC)
		c.check_membership(c.name,c.power_index)
	when 3
		c.check_criteria(c.economy_index)
	else
		break
	end
end

