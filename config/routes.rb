Rails.application.routes.draw do

  resources :crew

  match 'static' => 'application#static', via: [:get, :post]
  root to: 'application#index'
end
