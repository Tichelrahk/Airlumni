class User < ApplicationRecord
  has_one :service, dependent: :destroy
  has_many :bookings
  has_many :bookings, through: :service

  # validates :name, presence: true
  # validates :location, presence: true

end
