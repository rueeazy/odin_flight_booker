class CreateFlights < ActiveRecord::Migration[6.0]
  def change
    create_table :flights do |t|
      t.string :start_airport
      t.string :end_airport
      t.datetime :departure_time
      t.integer :flight_duration

      t.timestamps
    end
  end
end
