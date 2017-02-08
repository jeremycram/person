Rails.application.routes.draw do
  root 'human_people#index'
  resources :human_people

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
