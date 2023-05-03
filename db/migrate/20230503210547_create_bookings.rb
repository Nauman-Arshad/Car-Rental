class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.datetime :pick
      t.datetime :drop

      t.timestamps
    end
  end
end
