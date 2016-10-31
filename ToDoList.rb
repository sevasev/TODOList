#! ~/.shoes/walkabout/shoes

Shoes.app :width => 500, :height => 600 do

	background "#FFF"

	stack :height => 0.3, :width => 1.0 do

		banner "Things to do:", :align => "center", :underline => "single", :stroke => "#c4410d"
		
		@item_text = edit_line :width => 1.0, :height => 50, :margin_left => 0.2, :margin_right => 0.2, :margin_bottom => 10
		
		@append_item = button "New Item...", :width => 1.0, :height => 40, :margin_left => 0.2, :margin_right => 0.2
		
		@append_item.click do 
			@list.append do
				para @item_text.text
			end
			@item_text.text = ''
		end
	
	end

	@list = stack :height => 0.7, :width => 1.0 do;	end

end

