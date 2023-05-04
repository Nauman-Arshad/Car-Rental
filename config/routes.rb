Rails.application.routes.draw do
  resources :booking, only: [:home, :show]
  resources :credit_infos, only: [:new, :create, :show]
  get '/booking/show', to: 'booking#show', as: 'show_booking'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to:  'booking#home'
  get 'website/listing'
  get 'website/about'
  get 'website/contact'
  get 'website/blog'
  get 'website/testimonial'
end
