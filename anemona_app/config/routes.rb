Rails.application.routes.draw do
  root 'static_pages#home'
  
  get  '/home',   to: 'static_pages#home'

  get  '/comunity',   to: 'static_pages#comunity'
  
  get  '/contact',   to: 'static_pages#contact'
  
  get  '/whoUse',   to: 'static_pages#whoUse'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
