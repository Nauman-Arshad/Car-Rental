ActiveAdmin.register Car do
  permit_params :model, :year, :transmission, :seats, :price, :category_id, :image

  form do |f|
    f.inputs do
      f.input :model
      f.input :year
      f.input :transmission
      f.input :seats
      f.input :price
      f.input :category, as: :select, collection: Category.all.map { |category| [category.car_type, category.id] }
      f.input :image, as: :file
    end
    f.actions
  end
end
