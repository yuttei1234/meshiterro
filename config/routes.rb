Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resource :favroites, only: [:create, :destroy]
    
    resources :post_comments, only: [:create, :destroy]
  end
end