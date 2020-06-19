Rails.application.routes.draw do
  get 'inquiry/index'
  get 'inquiry/confirm'
  get 'inquiry/thanks'
  devise_for :end_users, controllers: {
  	sessions:      'end_users/sessions',
  	passwords:     'end_users/passwords',
  	registrations: 'end_users/registrations'
	}

  # エンドユーザー側のトップ画面
  get '/' => 'end_users/items#top', as: 'root'
  
  # aboutページ
  get 'about' => 'end_users/items#about', as: 'about'

  # お問い合わせフォーム
  get   'inquiry'         => 'inquiry#index'     # 入力画面
  post  'inquiry/confirm' => 'inquiry#confirm'   # 確認画面
  post  'inquiry/thanks'  => 'inquiry#thanks'    # 送信完了画面

  # エンドユーザー側/商品
  namespace :end_users do
    # タグ機能
    get 'tags/:tag', to: 'tags#index', as: :tag
    # resources :tags, only: %i[index show]

    get 'search' => 'items#search'
    post 'search' => 'items#search'

    resources :items do
      collection do
        post 'create_image' => 'items#create_image', as: 'create_image'
        get ':id/new_confirm' => 'items#new_confirm', as: 'new_confirm'
        get 'understand' => 'items#understand'
        get ':id/comment_all' => 'items#comment_all', as: 'comment_all'
        post ':id/edit_confirm' => 'items#edit_confirm', as: 'edit_confirm'
      end
      # コメント
      resources :comments, only: [:create, :destroy]
        # post ':id/comments' => 'comments#create', as: 'comments'
        # delete ':id/comments/:id' => 'comments#destroy', as: 'comment'
    end
  end


  # エンドユーザー側/ユーザー関連
  namespace :end_users do
   	resources :users, only: [:show, :index, :edit, :update]
  end

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
