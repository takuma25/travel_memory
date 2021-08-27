class Category < ApplicationRecord
  
  #articleモデルとの関連付け
  has_many :article
  has_ancestry
  
end
