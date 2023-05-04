class CreateCreditInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :credit_infos do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :payment
      t.string :card_name
      t.string :credit_number
      t.datetime :expiration
      t.integer :cvv

      t.timestamps
    end
  end
end
