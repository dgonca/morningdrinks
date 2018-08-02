class Order < ApplicationRecord
  belongs_to :user
  has_one :drink

  accepts_nested_attributes_for :drink
end
