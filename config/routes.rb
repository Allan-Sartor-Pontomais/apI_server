Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "calls#index"

  namespace :api do
    namespace :v1 do
      resources :calls
    end
  end

  get '*path', to: 'pages#index', via: :all
end
