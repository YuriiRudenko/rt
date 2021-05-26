Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#show'

  devise_for :users, controllers: { registrations: 'users/registrations' }

  devise_scope :user do
    get 'profile', to: 'users/registrations#show'
  end
  resources :albums

  get '*unmatched_route', to: 'application#render_404' unless Rails.env.development?
end
