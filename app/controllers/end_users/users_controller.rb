class EndUsers::UsersController < ApplicationController

before_action :authenticate_end_user!
before_action :ensure_correct_user, only: [:edit, :update]

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
	if params[:save]
		# (user_params)忘れずに
		@user.update(user_params)
		flash[:notice] = "変更が保存されました。"
		redirect_to end_users_user_path(current_end_user.id)
	else params[:back]
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

   #他ユーザーのマイページを編集するのを防ぐ
   def ensure_correct_user
    if current_end_user.id != params[:id].to_i
      flash[:notice] = "編集権限がありません"
      redirect_to end_users_user_path(current_end_user.id)
    end
  end

end
