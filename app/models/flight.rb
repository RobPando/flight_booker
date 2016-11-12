class Flight < ApplicationRecord
  belongs_to :from, class_name: "Airport"
  belongs_to :to, class_name: "Airport"
  has_many :bookings
  has_many :passangers, through: :bookings
end
