class Flight < ApplicationRecord
    has_many :to_airport, foreign_key: :end_airport_id, class_name: "Airport"
    has_many :from_airport, foreign_key: :start_airport_id, class_name: "Airport"
end
