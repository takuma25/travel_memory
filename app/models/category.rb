class Category < ApplicationRecord
  
  has_many :article
  has_ancestry
  
end
