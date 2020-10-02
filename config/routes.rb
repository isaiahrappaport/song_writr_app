Rails.application.routes.draw do
  namespace :api do
    get "/users" => "users#index"
  end
end
