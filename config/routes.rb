Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post '/create_order', to: "application#create_order"
  get '/index', to: "application#index"

  post '/webhooks/razorpay', to: "webhooks#razorpay"
end
