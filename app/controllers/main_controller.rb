class MainController < ApplicationController
	before_filter :allow_iframe_requests
	def allow_iframe_requests
	  response.headers['X-Frame-Options'] = "ALLOWALL"
	end
	def index
		if !signed_in?
			render 'index'
		else
			if Topic.count == 0
				redirect_to '/topics'
			else
				redirect_to topic_path(Topic.first)
			end
		end
	end

	def directed
		render 'directed'
	end

	def login
		nick = params[:nick]
		sign_in(nick)
		redirect_to '/canvas'
	end

	def logout
		sign_out
		redirect_to '/canvas'
	end

	def topics
		@topics = Node.find(:all, :conditions => {:root => true})
		render 'topics'
	end

end
