Rails.application.routes.draw do

get "/", to: "welcome#index"
root 'welcome#index'


get "/login", to: "sessions#new"
get "/logout", to: "sessions#destroy"
post '/sessions', to: 'sessions#create'

get "/signup", to:"speaker#new"
post "/signup", to:"speaker#create"

get "/questions", to: "questions#index"
post"/questions", to: "wine#show"


get "/wine", to: "wine#index"
get "speakers" => 'speaker#index', as: 'speakers'
post 'speakers' => 'speaker#create'

resources :speaker, :questions, :answers
end
