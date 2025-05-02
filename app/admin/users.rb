ActiveAdmin.register User do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :email, :primary_phone, :secondary_phone, :company_name, :admin, :email_confirmed
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :email, :primary_phone, :secondary_phone, :company_name, :admin, :email_confirmed]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
