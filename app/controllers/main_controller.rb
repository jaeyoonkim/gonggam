class MainController < ApplicationController
	before_filter :allow_iframe_requests
	def allow_iframe_requests
	  response.headers['X-Frame-Options'] = "ALLOWALL"
	end
	def index
		render 'index'
	end
	def directed
		render 'directed'
	end


end
