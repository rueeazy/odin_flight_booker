class BookingsController < ApplicationController

    def new
        @flight = Flight.find(params[:flight_id])
        @num_passengers = params[:num_tickets].to_i
        @booking = Booking.new
        @num_passengers.times do
            @booking.passengers.build
          end
    end

    def create
        @flight = Flight.find(booking_params[:flight_id])
        @booking = Booking.new(booking_params)

        if @booking.save
            redirect_to booking_path(@booking)
        else
            flash[:danger] = @booking.errors.full_messages
            render :new
        end

        def show
            @booking = Booking.find(params[:id])
        end
    end

    private
    def booking_params
      params.require(:booking).permit(:flight_id, passengers_attributes:[:name, :email, :flight_id])
    end 

end
