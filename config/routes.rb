Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  # She/He can add a new review to a restaurant --> GET "restaurants/38/reviews/new", POST "restaurants/38/reviews"
  # get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new'
  # post 'restaurants/:restaurant_id/reviews', to: 'reviews#create'

  resources :restaurants, only: [ :new, :create, :show, :index] do
    resources :reviews, only: [ :new, :create ]
  end
end
