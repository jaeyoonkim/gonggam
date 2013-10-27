class NodesController < ApplicationController
	def create
		node = Node.new(
			:root => params[:root],
			:parent => params[:parent],
			:title =>params[:title],
			:artist => params[:artist],
			:content => params[:content],
			:link => params[:link]
			)

		if node.save
			render :json => {result:true, node:node}
		else
			render :json => {result:false}
		end
	end
	def index
		nodes = Node.all

		render :json => nodes
	end
end
