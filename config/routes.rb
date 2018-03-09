Rails.application.routes.draw do
  get 'top/index'
  root to: "top#index"
  resources :twts

  resources :twts do
    collection do
      post :confirm
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
