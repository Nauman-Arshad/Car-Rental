class RenameTypeColumnToCarTypeInCategories < ActiveRecord::Migration[7.0]
  def change
    rename_column :categories, :type, :car_type
  end
end
