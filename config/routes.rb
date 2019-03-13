Rails.application.routes.draw do
  scope '/api/v1/', defaults: {format: :json} do
    get '/flight/:id', to: 'flight#show'
    get '/filter/:name', to: 'flight#filter'
    devise_for :users, controllers: {sessions: 'sessions'}
    devise_scope :user do
      get 'users/current', to: 'sessions#show'
    end
  end
end
