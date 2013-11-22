SimpleContact::Engine.routes.draw do
  root to: 'contact#new'
  get "/", to: 'contact#new', as: :contact
  post "/", to: 'contact#create', as: :contact
end
