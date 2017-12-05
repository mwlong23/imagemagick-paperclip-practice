Rails.application.routes.draw do
  resources :movies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :movies do
    collection do
        get 'search'
    end
  end
  root 'movies#index'
end
