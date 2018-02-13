Rails.application.routes.draw do

  get 'markpoints/index'

  get 'markmethods/index'

  get 'makers/index'

  get 'maildms/index'

  get 'kubuns/index'

  get 'deliverymethods/index'

  root to: 'static_pages#home'

  get 'signup', to: 'users#new'
  get    'login' , to: 'sessions#new'
  post   'login' , to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :users, :customers, :contacthistories, :outsourcings,
            :deliverymethods, :kubuns, :maildms, :makers,
            :markmethods, :markpoints

  resources :products do
    resources :productdetails, shallow: true
  end
  
  resources :orders do
    resources :custompatterns, shallow: true
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
