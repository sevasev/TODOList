Shoes.app(title: "TODO List",
   	      width: 400, height: 500) {

	background "#feff54".."#ff0067"
	@welcome = para "TODO List", size: 35, align: "center", underline: "single"
	stack do
		@new_item = button "New Item"
		@new_item.click() do 
			@item = edit_line width: 400
		end
	end
}





