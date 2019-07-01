module WorldBank
	def self.included(base)
		puts "\nWorldBank module Included in #{base} \n"
	end

	def check_loan_availiblity(gdp)
		case gdp
		when 5..6
			puts "\nApplicable for 5 billion dollars Loan \n"
		when 6.1..7
			puts "\nApplicable for 10 billion dollars Loan \n"
		when 7.1..8
			puts "\nApplicable for 15 billion dollars Loan \n"
		else
			puts "\nApplicable for more than 20 billion dollars loan \n"
		end
	end

	def check_for_loan(gdp)
		if gdp>5
			puts "\nLoan Criteria Satisfied !!\n"
			self.check_loan_availiblity(gdp)
		else
			puts "\nSorry Loan Criteria Not Satisfied !!\n"
		end
	end
end

module UNSC
	def self.extended(base)
		puts "\nUNSC module extended in #{base} \n"
	end

	def check_if_permanent(country)
		permanent=['china','france','russia','uk','usa']
		permanent.include?country
	end

	def check_membership(country,power_index)
		if self.check_if_permanent(country)
			puts "#{country} already member of UNSC"
		else
			if power_index<0.500
				puts "\nApplicable for UN Membership \n"
			else
				puts "\nSorry Criteria not Satisfied \n"
			end
		end
	end
end

module IMF
	def self.prepended(base)
		puts "\nIMF module prepended in #{base} \n"
	end

	def check_criteria(economy_index)
		if economy_index>10000
			puts "\nIMF Criteria Satisfied \n"
		else
			puts "\nSorry Criteria Not Satisfied \n"
		end
	end
end
