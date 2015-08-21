Rails.application.routes.draw do

  devise_for :users 
  
  resources :todo_items do
      member do
        patch :complete
      end
    resources :users, only: [:show]
  end

  root "welcome#index"

  get 'about' => 'welcome#about'
  
end
