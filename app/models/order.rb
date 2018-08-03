class Order < ApplicationRecord
  belongs_to :user
  has_many :drinks, dependent: :destroy

  accepts_nested_attributes_for :drinks
end
