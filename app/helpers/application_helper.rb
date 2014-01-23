module ApplicationHelper

	#helper modules are included and available everywhere in the app automgically, without specific inclusion

	#returns full page title or base title if none available
	def full_title(page_title) #where do we get this page_title from? How is it getting passed in? OK, I get it. If we provide the title, it gets passed in as the argument.
		base_title = "Ruby on Rails Tutorial Sample App"
		if page_title.empty? 
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end

end
