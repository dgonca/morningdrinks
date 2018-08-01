class Drink < ApplicationRecord
  belongs_to :order

  validates :drink_type, presence: true
end
