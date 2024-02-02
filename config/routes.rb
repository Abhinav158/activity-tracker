# Defines all the routes we have in the application

Rails.application.routes.draw do
  devise_for :users
  resources :activities do

  # Stats require one route for all activities - use collection
    collection do
      get 'stats'
    end
  end 
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "activities#index"

  

end
