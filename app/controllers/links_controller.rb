class LinksController < ApplicationController
	def create
		link = Link.new(
			:start_id => params[:start_id],
			:end_id => params[:end_id],
			:topic_id => params[:topic_id])

		if link.save
			render :json => {result:true, link:link}
		else
			render :json => {result:false}
		end
	end
	def index
		links = Link.all
		render :json => links
	end
end
