Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  namespace 'api' do
    resources :quests
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
