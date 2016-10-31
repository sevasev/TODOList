#! ~/.shoes/walkabout/shoes

Shoes.app :width => 500, :height => 600 do

	flow :width => 1.0, :height => 1.0 do

		background "#fdfdfd"

		stack :height => 0.3, :width => 1.0 do

			@banner = banner "Things to do:", :align => "center", 
			:stroke => "#c4410d", :margin_top => 10

			@item_text = edit_line :width => 1.0, :height => 45, 
			:margin_left => 0.1, :margin_right => 0.1

			@add_item = button("Add Item", :width => 1.0, :height => 40,
			:margin_left => 0.1, :margin_right => 0.1)

			@items_amount = 0

			@add_item.click do

				@items_amount += 1

				@index.append do
					para @items_amount, '. ', @item_text.text
				end

				@item_text.text = ''

			end

		end

		@index = stack :height => 0.7, :width =>  1.0 do; end

	end

end

