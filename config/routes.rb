Rails.application.routes.draw do

get "/", to: "welcome#index"
root 'welcome#index'


get "/login", to: "sessions#new"
get "/logout", to: "sessions#destroy"

get "/signup", to: "speaker#new"
post "/signup", to: "speaker#show"


post '/sessions', to: 'sessions#create'

resources :speaker, :questions, :answers
end
