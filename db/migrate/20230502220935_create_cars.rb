class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.integer :model
      t.integer :year
      t.string :transmission
      t.integer :seats
      t.float :price
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
