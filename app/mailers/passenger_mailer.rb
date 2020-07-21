class PassengerMailer < ApplicationMailer

    def confirmation_email(passengers)
        @bp = passengers
        mail(to: @bp.map(&:email), subject: 'You Have Booked Your Ticket!')
    end

end
