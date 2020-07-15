class AddColumnToPassengers < ActiveRecord::Migration[6.0]
  def change
    add_column :passengers, :flight_id, :integer
    add_foreign_key :passengers,
                    :flights,
                    column: :flight_id
  end
end
