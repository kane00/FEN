class EndUsers::CommentsController < ApplicationController

	#before_action :authenticate_user!

  def create
    # item = Item.find(params[:item_id])
    # @comment = item.comments.build(comment_params)
    # @comment.end_user_id = current_end_user.id
    # if @comment.save
    #   flash[:success] = "コメントしました"
    #   redirect_back(fallback_location: root_path)
    # else
    #   flash[:success] = "コメントできませんでした"
    #   redirect_back(fallback_location: root_path)
    # end
    item = Item.find(params[:item_id])
    @comment = Comment.new(comment_params)
	@comment.end_user_id = current_end_user.id
    @comment.item_id = item.id
    @comment.save
    redirect_to end_users_item_path(params[:item_id])
  end

  def destroy
  	Comment.find_by(id: params[:id], item_id: params[:item_id]).destroy
    redirect_to end_users_item_path(params[:item_id])
  end

  private
    def comment_params
      params.require(:comment).permit(:comment_text)
    end


end
