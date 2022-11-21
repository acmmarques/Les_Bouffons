class Offer < ApplicationRecord
  has_many :bookings
  has_many :reviews
  belongs_to :user
end
