Rails.application.routes.draw do
  root "comments#index"
  resources :explanations,only:[:index]
  resources :child_secrets,only: [:index,:create]
  resources :comments do
    resources :messages,only: [:create] do
      resources :likes, only: [:create]
    end
  end
end
