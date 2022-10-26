Rails.application.routes.draw do
  get 'reviews/new'
  resources :restaurants do
    resources :reviews, only: [:new, :create]
    collection do
      get :top
      get :worst
    end
    member do
      get :chef
    end

  end
  resources :reviews, only: :destroy

end
