Rails.application.routes.draw do
  devise_for :end_users, controllers: {
  	sessions:      'end_users/sessions',
  	passwords:     'end_users/passwords',
  	registrations: 'end_users/registrations'
	}

  # エンドユーザー側のトップ画面
  get '/' => 'end_users/items#top', as: 'root'
  
  # aboutページ
  get 'about' => 'end_users/items#about', as: 'about'

  # エンドユーザー側/商品
  namespace :end_users do
    get 'search' => 'items#search'
    resources :items do
      collection do
        post 'new_confirm' => 'items#new_confirm', as: 'new_confirm'
        get 'understand' => 'items#understand'
        get ':id/comment_all' => 'items#comment_all', as: 'comment_all'
        post ':id/edit_confirm' => 'items#edit_confirm', as: 'edit_confirm'
      end
    end
  end

  # エンドユーザー側/コメント
  namespace :end_users do
    resources :comments
  end

  # エンドユーザー側/ユーザー関連
  namespace :end_users do
   	resources :users, only: [:show, :index, :edit, :update]
  end

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
