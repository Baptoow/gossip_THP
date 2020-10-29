class User < ApplicationRecord
  has_many :gossips
  belongs_to :city
  has_many :sent_messages, foreign_key: 'sender_id', class_name: "PrivateMessage"
  has_many :received_messages, foreign_key: 'recipient_id', class_name: "PrivateMessage"
  validates :password, presence: true, length: { minimum: 6 }
  has_secure_password
  validates :first_name, length: { minimum: 2 }
  validates :last_name, length: { minimum: 2 }
end
