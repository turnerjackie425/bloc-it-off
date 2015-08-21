Rails.application.routes.draw do
  devise_for :users 
  
  resources :todo_items do
      member do
        patch :complete
      end
    resources :users, only: [:show]
  end

  root "todo_items#index"

  get 'about' => 'todo_items#about'
  
end
