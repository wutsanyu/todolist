class Tag < ApplicationRecord
  has_many :tasks, through: :taggings
end
