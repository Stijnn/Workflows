Rails.application.routes.draw do
  devise_for :users
  resource :users
  root 'pages#home'

  get '/:username' => 'pages#profile';
end
