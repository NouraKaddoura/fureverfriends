Rails.application.routes.draw do
root "pets#index"
get "/pets" => "pets#index"

resources :users 
 
resources :pets
delete "/users/:id" => "users#destroy"
delete "/pets/:id" => "pets#destroy"
delete "/logout" => "sessions#destroy", as: :logout
resources :sessions, only: [:new, :create]

end
