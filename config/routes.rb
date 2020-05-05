Rails.application.routes.draw do
  devise_for :users

  root "messages#index"
  resources :users, only: [:edit, :update]
<<<<<<< HEAD
=======
  resources :groups, only: [:new, :create, :edit, :update] do
    resources :messages, only: [:index, :create]
  end
>>>>>>> parent of e782ac9... Revert "Messageモデル作成・ルーティング設定"
end
