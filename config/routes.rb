Rails.application.routes.draw do
  get 'users/sign_up'
  get "/" => "home#top"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end