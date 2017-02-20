class User < ApplicationRecord
  validates :first_name, presence:true, length: { maximum: 30}
  validates :last_name, presence:true, length: { maximum: 30}
  validates :username, presence:true, length: { maximum: 30}
  validates :password, presence:true, length: { minimum: 8}, allow_nil: true
  validates :asu_id, presence:true, length: { maximum: 10}

  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
        BCrypt::Engine.cost
    BCyrpt::Password.create(string, cost: cost)
  end
end
