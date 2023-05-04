ActiveAdmin.register Booking do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :pick, :drop, :user_name, :user_email, :user_phone, :status
  #
  # or
  #
  # permit_params do
  #   permitted = [:pick, :drop, :user_name, :user_email, :user_phone, :status]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
