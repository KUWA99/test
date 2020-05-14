Rails.application.routes.draw do

  post   'hello/use' 
  get    'hello/use' 
 
  resources 'hello'
  delete '/users/sign_out'
 
  devise_for :users
  root 'hello#index'
  get 'users/show'
  get 'questions/index'
  post'questions/index'
  get 'questions/new'=>'questions#new'
  post 'questions' =>'questions#create'
  get 'questions/show'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'questions/:id' => 'questions#show',as: 'question'
  get    'users/:id'   =>  'users#show'
  resources :questions do
    resources :likes, only: [:create, :destroy]
  end
  resources :questions do
    resource :situation
  end
  resources :comment1s,only: [:create]
  resources :questions do
    resources :comment1s
  end
end
