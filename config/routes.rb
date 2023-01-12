Rails.application.routes.draw do

   devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}
  devise_for :users,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
  }


  root 'public/homes#top'
  get 'about' => 'public/homes#about'

  namespace :public do
    get 'homes/top'
    get 'homes/about'
  end
  namespace :admin do
   resources :tags
   resources :posts
   resources :jobs
   resources :users
  end
  namespace :public do
   resources :tags
   resources :posts
   resources :jobs
   resources :users
   resources :targets
   resources :steps
   resources :post_tags
  end

  #devise_for :admins
  #devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
