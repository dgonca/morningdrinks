class User < ApplicationRecord
  before_save { username.downcase! }
  
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }

  has_secure_password
end
