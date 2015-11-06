Unconf::Application.routes.draw do
  root to: "conferences#index"

  resources :conferences, only: [:new, :create, :show] do
    resources :events, only: [:new, :create]
  end
end
