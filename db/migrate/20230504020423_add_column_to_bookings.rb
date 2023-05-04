class AddColumnToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :user_name, :string
    add_column :bookings, :user_email, :string
    add_column :bookings, :user_phone, :string
    add_column :bookings, :status, :integer
  end
end
