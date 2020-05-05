class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :group_users
  has_many :groups, through: :group_users
<<<<<<< Updated upstream
end
=======
  has_many :messages
<<<<<<< HEAD
end
>>>>>>> parent of e782ac9... Revert "Messageモデル作成・ルーティング設定"
=======
end
>>>>>>> parent of e782ac9... Revert "Messageモデル作成・ルーティング設定"
>>>>>>> Stashed changes
