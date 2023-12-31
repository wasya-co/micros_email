
Rails.application.routes.draw do
  root to: 'application#home'


  mount WcoEmail::Engine,      :at => '/email/'

  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
  }
  resources :users

end
