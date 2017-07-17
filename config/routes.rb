Rails.application.routes.draw do
  devise_for :users
  root to: 'welcome#home'
  get '/about' => 'welcome#about'
end
