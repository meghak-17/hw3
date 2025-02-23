
Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "places#index"

  resources :places do
    resources :entries, only: [:new, :create]
  end
end

