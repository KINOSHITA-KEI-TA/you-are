Rails.application.routes.draw do
  get 'comments/index'
  root "comments#index"
end
