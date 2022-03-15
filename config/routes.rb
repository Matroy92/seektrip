Rails.application.routes.draw do
  resources :trips do
    resources :reviews, only: [ :new, :create ]
  end
  resources :reviews, only: [ :destroy ]
end
