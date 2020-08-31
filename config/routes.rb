Rails.application.routes.draw do
  root "comments#index"
  resources :child_secrets,only: [:index]
  resources :comments do
    resources :messages,only: [:create] do
      resources :likes, only: [:create]
    end
  end
end
