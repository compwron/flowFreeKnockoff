class Grid
	attr_reader :occupied_squares

	def initialize grid_size, color_count
		@occupied_squares = color_count * 2
	end

	def is_playable?
		return false
	end
end