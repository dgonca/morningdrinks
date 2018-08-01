class User < ApplicationRecord
  has_many :orders
  
  before_save { username.downcase! }
  before_save { email.downcase! }

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }

  has_secure_password
end
