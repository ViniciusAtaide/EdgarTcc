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

end
