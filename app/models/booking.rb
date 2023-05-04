class Booking < ApplicationRecord
  enum :status, [:pending, :archived]
end
