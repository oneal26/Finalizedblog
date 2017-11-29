Rails.application.routes.draw do

  devise_for :users
	resources :comments, only: [:edit, :create, :update, :destroy]

	resources :shop, only: [:create, :destroy]
	#resources :comments, except: [:new, :index, :show]

	resources :blog_posts

	get 'shop' => 'shop#shop'

	get '/:name' => 'blog_posts#user_posts', as: :user_posts

	root 'blog_posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
