class Flight < ApplicationRecord
    belongs_to :start_airport, class_name: "Airport"
    belongs_to :end_airport, class_name: "Airport"
    has_many :passengers
    has_many :bookings

    def flight_date_formatted
        departure_time.strftime("%m/%d/%Y")
    end
end
