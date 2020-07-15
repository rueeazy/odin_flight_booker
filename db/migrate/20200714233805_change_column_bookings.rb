class ChangeColumnBookings < ActiveRecord::Migration[6.0]
  def change
    rename_column :bookings, :flight, :flight_id
  end
end
