Rails.application.routes.draw do

  namespace :public do
    get 'relationships/followings'
    get 'relationships/followers'
  end
   devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}
  devise_for :users,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
  }


  devise_scope :user do
    post 'users/guest_sign_in', to: 'public/users/sessions#guest_sign_in'
  end

  root 'public/homes#top'
  get 'about' => 'public/homes#about'


  namespace :admin do
   resources :tags
   resources :posts
   resources :jobs
   resources :users
  end
  scope module: :public do
   resources :tags

   resources :jobs
   resources :users do
    resource :relationships, only: [:create, :destroy]
    get 'followings' => 'relationships#followings', as: 'followings'
    get 'followers' => 'relationships#followers', as: 'followers'
   end
   resources :targets
   resources :steps
   resources :posts do
    resources :post_tags
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
   end


  end



  #devise_for :admins
  #devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
