class Gossip < ApplicationRecord
  belongs_to :user
  has_many :join_tags
  has_many  :tags, through: :join_tags  

  validates :title, presence: true
  validates :content, presence: true

end
