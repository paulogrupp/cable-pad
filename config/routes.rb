Rails.application.routes.draw do
  get '/:name', to: 'notepads#edit', as: :notepad_edit
  put '/:name', to: 'notepads#update', as: :notepad
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
