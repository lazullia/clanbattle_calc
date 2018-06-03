Rails.application.routes.draw do
  resources :battles
  root 'clan_users#index'
  resources :battle_sprints
  resources :clan_users
  resources :characters
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
