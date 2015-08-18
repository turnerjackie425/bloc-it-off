Rails.application.routes.draw do
  devise_for :users 
  
  resources :todo_lists do
    resources :todo_items, except: [:index] do
      member do
        patch :complete
      end
    resources :users, only: [:show]
  end
end

  root "todo_lists#index"
  
end
