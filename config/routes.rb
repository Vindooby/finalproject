Rails.application.routes.draw do
  devise_for :users

  resources :champions
  root 'welcome#index'
  get '/champions' => 'champions#index'
  get '/builds' => 'builds#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
