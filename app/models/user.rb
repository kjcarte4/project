class User < ApplicationRecord
  validates :first_name, presence:true, length: { maximum: 30}
  validates :last_name, presence:true, length: { maximum: 30}
  validates :username, presence:true, length: { maximum: 30}
  validates :password, presence:true, length: { minimum: 8}, allow_nil: true
  validates :asu_id, presence:true, length: { maximum: 10}

  has_one :car
end
