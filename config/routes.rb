SimpleContact::Engine.routes.draw do
  
  get "/", to: 'contact#new', as: :contact
  post "/", to: 'contact#create', as: :create_contact
  root to: 'contact#new'
end
