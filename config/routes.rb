Rails.application.routes.draw do
  resources :players
  resources :teams
  root to: "teams#index"
end
