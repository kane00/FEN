class EndUsers::UsersController < ApplicationController

def index
end

def show
	@user = EndUser.find(params[:id])
end

def edit
	@user = EndUser.find(params[:id])
end

def update
	@user = EndUser.find(params[:id])
	if params[:back]
		# (user_params)忘れずに
		@user.update(user_params)
		flash[:notice] = "変更が保存されました。"
		redirect_to end_users_user_path(current_end_user.id)
	else params[:user_status] == 'true'
		@user.user_status = false
		@user.save
		flash[:notice] = "ありがとうございました。またのご利用を心よりお待ちしております。"
		redirect_to root_path
	end
end

  private

   def user_params
     params.require(:end_user).permit(:end_user_name, :email, :area, :user_status)
   end

end
