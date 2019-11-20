Rails.application.routes.draw do
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :welcome
  
  root "welcome#index"

  def new 
  end

  def create
  end


Rails.application.routes.draw do
  get 'welcome/index'
 
  resources :articles 
 
 
  root 'welcome#index'
end
resources :articles do
  resources :comments
end
end

