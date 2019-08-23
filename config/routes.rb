Rails.application.routes.draw do
  resources :locations do
    resources :businesses
  end
end
