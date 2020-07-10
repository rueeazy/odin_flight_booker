class ChangeColumnTypeFlights < ActiveRecord::Migration[6.0]
  def change
    change_column :flights, :start_airport, :integer
    change_column :flights, :end_airport, :integer
    add_foreign_key :flights,
                    :airports,
                    column: :start_airport

    add_foreign_key :flights,
                    :airports,
                    column: :end_airport
  end
end
