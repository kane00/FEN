class EndUsers::LikesController < ApplicationController
	before_action :set_variables, except: [:index]

  def index
    @items = current_end_user.liked_items.order("updated_at DESC")
  end

  def like
    @like = current_end_user.likes.new(item_id: @item.id)
    @like.save
  end

  def unlike
    @like = current_end_user.likes.find_by(item_id: @item.id)
    @like.destroy
  end

  private

  def set_variables
    @item = Item.find(params[:item_id])
    @id_name = "#like-link-#{@item.id}"
  end

end
