class Booking < ApplicationRecord
  enum :status, [:pending, :archived]
  belongs_to :car

  def calculate_price
    (end_date - start_date).to_i * car.price_for_dates(start_date, end_date)
  end
end
