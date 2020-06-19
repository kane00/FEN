class EndUsers::TagsController < ApplicationController

before_action :authenticate_end_user!

	def index
	   @items = Item.tagged_with(params[:tag]).where.not(item_status: 'false').page(params[:page]).per(20) 	#パラメータでtagの文字列が含まれている&item_statusがfalse以外のitemを代入
	   @tag = params[:tag]
	   @tags = Item.tag_counts_on(:tags).order('count DESC')
	end

end
