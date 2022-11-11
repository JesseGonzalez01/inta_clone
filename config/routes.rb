Rails.application.routes.draw do
  devise_for :users

  resources :users, only: [] do
     resources :posts
  end

  get "users/:user_id/posts/:id/star", to: "posts#star", as: :star

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
