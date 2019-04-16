Rails.application.routes.draw do
  get 'dorm_halls/index'
  get 'welcome/index'
  get 'about/index'
  resources :belk_articles
  
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
