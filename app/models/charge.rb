class Charge < ActiveRecord::Base

  validates :amount, numericality: { greater_than_or_equal_to: 0.49 }

end