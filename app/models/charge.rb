class Charge < ActiveRecord::Base

	validates :amount, presence: true
  validates_numericality_of :amount,
  greater_than: 49,
  message: "Must be at least 50 cents please"

end