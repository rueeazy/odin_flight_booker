class RemoveColumnBookings < ActiveRecord::Migration[6.0]
  def change
      remove_column :bookings, :passengers
  end
end
