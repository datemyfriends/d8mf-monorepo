Rails.application.routes.draw do
  resources :user do
    resources :friendship
  end
end