Rails.application.routes.draw do
  root to: 'static_pages#home'

  post "/signin", to: 'sessions#create'

  get '/rsvp', to: 'static_pages#rsvp'
end
