Rails.application.routes.draw do
  get '/notepads/:name', to: 'notepads#edit'
  put '/notepads/:name', to: 'notepads#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
