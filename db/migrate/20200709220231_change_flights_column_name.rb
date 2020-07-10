class ChangeFlightsColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :flights, :start_airport, :start_airport_id
    rename_column :flights, :end_airport, :end_airport_id
  end
end
