Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :notifications do
    collection do
      post 'append'
    end
  end
end
