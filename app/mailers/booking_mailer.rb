class BookingMailer < ApplicationMailer
  default from: 'naumankhan642@gmail.com'

  def booking_confirmation(booking)
    @booking = booking
    mail(to: booking.user_email, subject: 'Booking Confirmation')
  end
end
