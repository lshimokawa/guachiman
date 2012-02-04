Guachiman::Application.routes.draw do
  resources :servers

  root to: 'servers#index'
end
