class Offer < ApplicationRecord
  has_many :bookings
  has_many :reviews
  has_many_attached :photos
  belongs_to :user
end
