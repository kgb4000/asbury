class Charge < ActiveRecord::Base

	validates :amount, presence: true
  validates_numericality_of :amount,
  greater_than: 49,
  message: "must be at least 50 cents"

end