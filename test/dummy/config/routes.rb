Rails.application.routes.draw do

  get "home/index"

  mount SimpleContact::Engine => "/simple_contact"
  root to: 'home#index' 
end
