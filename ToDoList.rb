Shoes.app :width => 500, :height => 600 do
	flow :width => 1.0, :height => 1.0 do
		background "#1e1e20"
		stack :height => 0.3, :width => 1.0 do
			@banner = banner "Things to do:", :align => "center", 
			:underline => "single", :stroke => "#c4410d"
			@new_item = button("New Item...", :width => 1.0, :height => 50)
		end
		stack :height => 0.7, :width => 1.0 do
			para "Masik masik"
		end
	end
end





