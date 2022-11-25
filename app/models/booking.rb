class Booking < ApplicationRecord
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
  belongs_to :offer
end
