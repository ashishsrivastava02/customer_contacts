ActiveAdmin.register CustomerContact do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
 permit_params :Last_Name, :First_Name, :Company_Name, :Email_Address, :Prod_Instance
# or

  sidebar :help do
    "Need help? Email us at release-team@coupa.com"
  end
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
