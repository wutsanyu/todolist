class Task < ApplicationRecord
  has_many :tags, through: :taggings
end
