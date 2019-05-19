class Passenger < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :middle_name, presence: false

  belongs_to :order

end
