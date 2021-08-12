class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  #articlesモデルとの関連づけ
  has_many :articles, dependent: :destroy
  
  #article_commensモデルとの関連づけ
  has_many :article_comments, dependent: :destroy
end
