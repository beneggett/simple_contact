SimpleContact::Engine.routes.draw do
  # Routes are simple. All routes will point to the root_url, which will be where you mount the engine.
  get "/", to: 'contact#new', as: :contact
  post "/", to: 'contact#create', as: :contact
  root to: 'contact#new'
end
