Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to:  'website#home'
  get 'website/listing'
  get 'website/about'
  get 'website/contact'
  get 'website/blog'
  get 'website/testimonial'
end
