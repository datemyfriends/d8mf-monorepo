Rails.application.routes.draw do
  resources :user do
    resources :friends
  end
end