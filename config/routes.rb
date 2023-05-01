Rails.application.routes.draw do
  root to:  'website#home'
  get 'website/listing'
  get 'website/about'
  get 'website/contact'
  get 'website/blog'
  get 'website/testimonial'
end
