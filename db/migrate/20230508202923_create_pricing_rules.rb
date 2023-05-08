class CreatePricingRules < ActiveRecord::Migration[7.0]
  def change
    create_table :pricing_rules do |t|
      t.date :start_date
      t.date :end_date
      t.integer :price
      t.references :car, null: false, foreign_key: true

      t.timestamps
    end
  end
end
