ActiveAdmin.register Turmadisciplina do
	permit_params :turma, :professor, :disciplina, :matriculadisciplina

	index do
		column :turma	
		column :professor
		column :disciplina
		actions
	end

  form do |f|
    f.inputs "Campos" do
      f.input :turma
      f.input :professor
      f.input :disciplina
      f.input :matriculadisciplina, label: 'Alunos'
    end
    f.actions
  end

end