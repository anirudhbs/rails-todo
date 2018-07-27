Rails.application.routes.draw do
  get 'welcome/index'
  resources :todos do
    resources :comments
  end
  root 'wecome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
