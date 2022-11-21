class AddLocationToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :location, :string
  end
end
