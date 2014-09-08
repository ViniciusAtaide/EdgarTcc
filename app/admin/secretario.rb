ActiveAdmin.register Secretario do
  permit_params :email, :password

  index do
    column :email
    actions
  end
  form do |f|
    f.inputs "Campos" do
      f.input :email
      f.input :password
    end
    f.actions
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
