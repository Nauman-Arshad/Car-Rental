class ChangeColumnTypeInCars < ActiveRecord::Migration[7.0]
  def change
    change_column :cars, :model, :string
  end
end
