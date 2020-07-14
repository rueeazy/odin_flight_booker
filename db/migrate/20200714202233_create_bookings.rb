class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.integer :flight
      t.integer :passengers

      t.timestamps
    end
    add_foreign_key :bookings,
                    :flights,
                    column: :flight
  end
end

