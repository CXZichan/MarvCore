Rails.application.routes.draw do
  root 'pages#home'
  get 'start_server', to: 'pages#start_server'
  get 'stop_server', to: 'pages#stop_server'
  get 'restart_server', to: 'pages#restart_server'

  get 'start_mc', to: 'pages#start_mc'
  get 'stop_mc', to: 'pages#stop_mc'
  get 'restart_mc', to: 'pages#restart_mc'
  get 'start_cs2', to: 'pages#start_cs2'
  get 'stop_cs2', to: 'pages#stop_cs2'
  get 'restart_cs2', to: 'pages#restart_cs2'



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
end
