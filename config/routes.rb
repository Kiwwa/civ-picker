Rails.application.routes.draw do
  root 'pages#index'
  get '/banned', to: 'pages#banned'
  get '/reset', to: 'pages#reset'
  get '/realreset', to: 'pages#real_reset'
end
