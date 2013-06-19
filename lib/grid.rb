class Grid
	attr_reader :occupied_squares

	def initialize grid_size, color_count
		@grid_size = grid_size
		@occupied_squares = color_count * 2
	end

	def is_playable?
		return ! (@occupied_squares == @grid_size * @grid_size)
	end
end