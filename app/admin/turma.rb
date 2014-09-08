ActiveAdmin.register Turma do

  permit_params :turno, :serie, :turma

  form do |f|
    f.inputs "Campos" do
      f.input :turno, as: :select, collection: ['Manha', 'Tarde', 'Noite']
      f.input :serie, as: :select, collection: ['5 Fundamental', '6 Fundamental', '7 Fundamental', '8 Fundamental', '9 Fundamental', '1 Medio', '2 Medio', '3 Medio']
      f.input :turma
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
