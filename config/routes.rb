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
  	resources :items

    get 'search' => 'items#search'
    get 'items/:id/comment_all' => 'items#comment_all', as: 'items_comment_all'
    get 'items/new/new_confirm' => 'items#new_confirm', as: 'items_new_confirm'
    get 'items/:id/edit_confirm' => 'items#edit_confirm', as: 'items_edit_confirm'
    get 'understand' => 'items#understand'
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
