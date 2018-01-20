Rails.application.routes.draw do

  get 'custompatterns/new'

  root to: 'static_pages#home'

  get 'signup', to: 'users#new'
  get    'login' , to: 'sessions#new'
  post   'login' , to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :users, :customers, :contacthistories

  resources :products do
    resources :productdetails, shallow: true
  end
  
  resources :orders do
    resources :custompatterns, shallow: true
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
