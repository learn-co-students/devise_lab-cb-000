Rails.application.routes.draw do

  root "welcome#home"
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  get "/welcome/home" => "welcome#home"

  get '/about' => "static#about"
end
