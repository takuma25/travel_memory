class Article < ApplicationRecord
  
   #userモデルとの関連づけ
   belongs_to :user
   attachment :image
   
   #categoryモデルとの関連づけ
   belongs_to :category
   
   #article_commentsモデルとの関連づけ
   has_many :article_comments, dependent: :destroy
end
