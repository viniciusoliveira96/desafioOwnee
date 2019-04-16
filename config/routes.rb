Rails.application.routes.draw do
  root :to => redirect('/filmes')

  resources :filmes
  resources :generos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
