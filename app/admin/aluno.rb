ActiveAdmin.register Aluno do

  permit_params :nome

  index as: :table do
    column :nome
    column :matricula
    actions
  end

  form do |f|
    f.inputs "Campos" do
    	f.input :nome	
      # f.inputs do
      	# f.has_many :matriculas, allow_destroy: true, heading: 'Matriculas', new_record: false do |mf|
      		# mf.input :ano_letivo
      	# end
      # end 
    end
    f.actions
  end


  show do
    attributes_table do
      row :nome
      row :matricula
    end
  end
end
