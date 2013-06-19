class Grid
	attr_accessor :colors

	def initialize grid_size, color_count
		@colors = generate_colors(color_count)
	end

	def generate_colors color_count
		0..color_count.map {|color_number|

			# need validation that random point doesn't conflict with existing points
			endpoint1 = random_point(@colors)
			endpoint2 = random_point(@colors, endpoint1)
			@colors += [Color.new(availiable_colors[color_number], endpoint1, endpoint2)] 	
		}
		availiable_colors
	end

	def random_point colors, endpoint=null
		:a1
	end

	def is_playable?
		return ! (@occupied_squares == @grid_size * @grid_size)
	end

	# def to_s
 #    "  1|2|3\n" +
 #        "a #{grid[:a1]}|#{grid[:a2]}|#{grid[:a3]}\n" +
 #        "b #{grid[:b1]}|#{grid[:b2]}|#{grid[:b3]}\n" +
 #        "c #{grid[:c1]}|#{grid[:c2]}|#{grid[:c3]}"
 #  end
end