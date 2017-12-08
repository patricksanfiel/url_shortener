Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :longlinks
  root 'longlinks#index'
  # get '/longlinks'=>'longlinks#index'
  get "/:id" => 'longlinks#show'
end
