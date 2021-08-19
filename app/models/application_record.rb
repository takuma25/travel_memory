class ApplicationRecord < ActiveRecord::Base
    attribute :self_introduction, :text, default: 'よろしくお願いします。'

  self.abstract_class = true
end
