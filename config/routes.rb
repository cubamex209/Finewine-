Rails.application.routes.draw do

get "/", to: "welcome#index"
root 'welcome#index'


get "/login", to: "sessions#new"
get "/logout", to: "sessions#destroy"

post '/sessions', to: 'sessions#create'

resources :speakers, :questions, :answers
end
