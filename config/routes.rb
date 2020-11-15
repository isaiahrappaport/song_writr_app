Rails.application.routes.draw do
  namespace :api do

    # users routes
    get "/users" => "users#index"
    get "/users/:id" => "users#show"
    #signup -----
    post "/users" => "users#create"
    # -----
    patch "/users/:id" => "users#update"
    delete "users/:id" => "users#destroy"

    #login
    post "/sessions" => "sessions#create"

    # songs routes
    get "/songs" => "songs#index"
    get "/songs/:id" => "songs#show"
    post "/songs" => "songs#create"
    patch "/songs/:id" => "songs#update"
    delete "/songs/:id" => "songs#destroy"

    # user songs routes

    get "/user_songs" => "user_songs#index"
    get "/user_songs/:id" => "user_songs#show"

    # rhyming generator
    get "/rhymes/:word" => "rhymes#index"

    #suggestions

    get "/suggestions" => "suggestions#index"
    post "/suggestions" => "suggestions#create"
  end
end
