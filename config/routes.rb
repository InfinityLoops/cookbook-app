Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  post "/users" => "users#create"
  
  namespace :api do
    get '/recipes' => 'recipes#index'
    post '/recipes' => 'recipes#create'
    get '/recipes/:id' => 'recipes#show'
    patch '/recipes/:id' => 'recipes#update'
    delete '/recipes/:id' => 'recipes#destroy'
  end
end
