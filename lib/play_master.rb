class PlayMaster
	attr_reader :grid

	def initialize grid
		@grid = grid
	end

	def play
		if grid.is_playable? then
			puts "next move?"
			next_move = gets.chomp
			parse_move(next_move)
			puts "keep going!"
			play
		else
			puts "you win!"
		end
	end

	def parse_move input
	end
end