Rails.application.routes.draw do
  root to: "blogs#index"
<<<<<<< HEAD
  resources :blogs do
    get 'search', to: 'blogs#search', as: 'search'
  end
  resources :categories, except: [:new, :show]
  
=======
  resources :blogs
>>>>>>> parent of ed72fc0 (カテゴリ機能追加)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
