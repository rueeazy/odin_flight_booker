class Passenger < ApplicationRecord
    has_one :booking
    belongs_to :flight
end
