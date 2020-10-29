class Tag < ApplicationRecord
  has_many :join_tags
  has_many :gossips, through: :join_tags
end
