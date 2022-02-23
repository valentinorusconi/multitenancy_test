Rails.application.routes.draw do
  constraints subdomain: /.*/ do
    resources :patients
  end
  resources :practices
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
