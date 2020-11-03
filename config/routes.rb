Rails.application.routes.draw do
  root 'tops#index'
  resources :explanations,only:[:index]
  resources :child_secrets,only: [:index,:create,:new]
  resources :comments do
    collection do
      get 'search'
    end
    resources :messages,only: [:create] do
      resources :likes, only: [:create]
    end
  end
end
