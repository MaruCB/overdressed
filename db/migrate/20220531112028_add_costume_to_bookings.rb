class AddCostumeToBookings < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :costume, foreign_key: true
  end
end
