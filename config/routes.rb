Rails.application.routes.draw do
<<<<<<< Updated upstream
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
=======
  devise_for :users
  root 'groups#index'
  resources :users, only: [:edit, :update]
<<<<<<< Updated upstream
  resources :groups, only: [:index, :new, :create, :edit, :update]
>>>>>>> Stashed changes
=======
<<<<<<< HEAD
<<<<<<< HEAD
=======
  resources :groups, only: [:new, :create, :edit, :update] do
  resources :message, only: [:index, :create]
  end
>>>>>>> parent of e782ac9... Revert "Messageモデル作成・ルーティング設定"
=======
  resources :groups, only: [:new, :create, :edit, :update] do
    resources :messages, only: [:index, :create]
  end
>>>>>>> parent of e782ac9... Revert "Messageモデル作成・ルーティング設定"
>>>>>>> Stashed changes
end
