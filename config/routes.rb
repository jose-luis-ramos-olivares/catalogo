Rails.application.routes.draw do
  resources :payments
  resources :transbanks
  resources :oneclicks
  resources :webpays
  resources :credit_cards
  resources :orders
  resources :paypals
  resources :stripes
  resources :images
  resources :physicals
  resources :digitals
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
