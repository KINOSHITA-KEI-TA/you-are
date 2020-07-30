Rails.application.routes.draw do
  root "comments#index"
  resources :comments do
    resources :messages
  end
end
