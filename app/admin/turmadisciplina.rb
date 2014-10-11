ActiveAdmin.register Turmadisciplina  do
  menu label: 'Plano de Disciplina'
	permit_params :turma, :professor, :disciplina, :matriculadisciplina, :descricao

	index title: 'Plano de Disciplina' do
		column :turma	
		column :professor
		column :disciplina
		actions
	end

  form do |f|
    f.inputs 'Campos' do
      f.input :turma
      f.input :professor
      f.input :disciplina
      f.input :descricao
      f.input :matriculadisciplina, label: 'Alunos'
    end
    f.actions
  end

end