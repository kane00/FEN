class ApplicationController < ActionController::Base

# 最初にbefore_actionが実行される。そして、次にそこに定義されたconfigure_permitted_parametersが実行
before_action :configure_permitted_parameters, if: :devise_controller?


  protected

  # ログイン後のリダイレクト先
  def after_sign_in_path_for(resource)
    if end_user_signed_in?
      root_path
    end
  end

  # ログアウト後のリダイレクト先
  def after_sign_out_path_for(resource)
  end

  # 新規登録のパラメータ
  def configure_permitted_parameters
	devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :end_user_name, :area, :user_status])
  end

end
