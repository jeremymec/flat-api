Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'flats/:invite', :to => 'flats#flat_by_invite'

  resources :users, param: :uid do
    resource :flats
  end
end
