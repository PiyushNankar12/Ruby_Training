class LaLiga
	def initialize(team,points)
		@team=team
		@points=points
	end

	def print_team_info
		puts "Team : #{@team} \t Points : #{@points}\n"
	end
end

class RealMadrid < LaLiga
	def initialize(player,team,points)
		@player=player
		@team=team
		@points=points
		super(team,points)
	end

	def print_player
		puts "Player : #{@player} \t Team : #{@team}\n"
	end
end

real_madrid = RealMadrid.new('Hazard','Real Madrid',92)

puts real_madrid.print_player
puts real_madrid.print_team_info