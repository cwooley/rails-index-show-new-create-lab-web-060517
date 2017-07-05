Rails.application.routes.draw do
 get '/coupon/:id', to: 'coupons#show', as: '/coupon'
 get '/coupons', to:'coupons#index'
 get '/coupons/new', to:'coupons#new'
 post '/coupons/new', to:'coupons#create'
 get 'new_coupon', to:'coupons#new'
end
