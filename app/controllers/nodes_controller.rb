class NodesController < ApplicationController
	def create

		innerdata = ""
		if(params[:content] == "image")
			innerdata = "<a target=_blank href="+params[:link]+"><img width=250px src='"+params[:link]+"'></a>"
		elsif(params[:content] == "video" or params[:content] == "music")
			begin
				o = OhEmbedr::OhEmbedr.new(:url => params[:link], :maxwidth => 250)
	    		embed_data = o.gets
	    		innerdata = embed_data["html"]
			rescue OhEmbedr::UnsupportedError => error
	   			innerdata = "<a target=_blank href="+params[:link]+">"+params[:link]+"</a>"# URL not supported
			end
		else
			innerdata = "<a target=_blank href="+params[:link]+">"+params[:link]+"</a>"
		end
		node = Node.new(
			:root => params[:root],
			:parent => params[:parent],
			:title =>params[:title],
			:artist => params[:artist],
			:content => params[:content],
			:link => innerdata,
			:topic_id => params[:topic_id],
			:description => params[:description],
			:user_nick => params[:user_nick]
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
