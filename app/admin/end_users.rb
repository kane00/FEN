ActiveAdmin.register EndUser do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :email, :encrypted_password, :end_user_name, :area, :user_status, :reset_password_token, :reset_password_sent_at, :remember_created_at
  #
  # or
  #
  permit_params do
    permitted = [:email, :encrypted_password, :end_user_name, :area, :user_status, :reset_password_token, :reset_password_sent_at, :remember_created_at]
    permitted << :other if params[:action] == 'create' && current_user.admin?
    permitted
  end
  
  index do
   # check this page
   column :id
   column :email
   column :end_user_name
   column :area
   column :user_status
   column :remember_created_at
   actions
  end

  show do
    attributes_table do
      row 'email' do
        resource.email
      end
      row 'end_user_name' do
        resource.end_user_name
      end
      row 'area' do
        resource.area
      end
      row 'user_status' do
        resource.user_status
      end
    end
  end



end
