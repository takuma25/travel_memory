class ArticleComment < ApplicationRecord
  
  #userとarticleモデルとの関連づけ
  belongs_to :user
  #belongs_to :user
  belongs_to :article
end
