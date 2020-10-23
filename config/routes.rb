Rails.application.routes.draw do
  namespace :api do
    # users routes
    get "/users" => "users#index"
    get "/users/:id" => "users#show"
    post "/users" => "users#create"
    patch "/users/:id" => "users#update"
    delete "users/:id" => "users#destroy"

    post "/sessions" => "sessions#create"

    # songs routes
    get "/songs" => "songs#index"
    get "/songs/:id" => "songs#show"
    post "/songs" => "songs#create"
    patch "/songs/:id" => "songs#update"
    delete "/songs/:id" => "songs#destroy"

    # user songs routes

    # suggestions routes

    # backing track routes

    # tips routes

    # api lyrics analyzer routes

    # api songs analyzer routes
  end
end
