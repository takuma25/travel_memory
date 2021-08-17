class Like < ApplicationRecord
  
  #userモデルとの関連づけ
  belongs_to :user
  
  #articleモデルとの関連づけ
  belongs_to :article
  
end
