Rails.application.routes.draw do

get "/", to: "welcome#index"
root 'welcome#index'


get "/login", to: "sessions#new"
get "/logout", to: "sessions#destroy"

get "/signup", to: "speaker#new"
post "/signup", to: "speaker#show"

get "/questions", to: "questions#index"
post"/questions", to: "wine#show"

post '/sessions', to: 'sessions#create'

get "/wine", to: "wine#index"
resources :speaker, :questions, :answers
end
