Rails.application.routes.draw do
  scope '/api/v1/', defaults: {format: :json} do
    get '/flight/:id', to: 'flight#show'
    get '/filter/:name', to: 'flight#filter'
    get '/history', to: 'orders#history'
    resources :orders
    devise_for :users, controllers: {sessions: 'sessions', confirmations: 'confirmations'}
    devise_scope :user do
      get 'users/current', to: 'sessions#show'
    end

    get '/dollar_course', to: 'application#get_dollar_course'
    get '/get_urik/:text', to: 'application#get_urik'
    get '/get_bank_info/:bic', to: 'application#get_bank_info'
  end
end
