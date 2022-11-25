class Offer < ApplicationRecord
  FEATURES = [ "juggle", "handstand", "balloons", "face-paint", "singing", "dad-jokes", "card-tricks", "magic-tricks", "instrument", "dance", "acrobatics", "annoy" ]
  has_many :bookings
  has_many :reviews
  has_many_attached :photos
  belongs_to :user

  validates :details, presence: true
  validates :features, presence: true
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
end
