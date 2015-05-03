ActiveAdmin.register Turmadisciplina  do
  menu label: 'Turmas e Professores'
  permit_params :turma_id, :professor_id, :disciplina, :cargahoraria, :matriculadisciplina, :descricao

  index title: 'Turmas e Professores' do
    column :turma
    column :professor
    column :disciplina
    column :cargahoraria
    column :descricao
    actions
  end

  form do |f|
    f.inputs 'Campos' do
      f.input :turma
      f.input :professor
      f.input :disciplina
      f.input :cargahoraria
      f.input :descricao
    end
    f.actions
  end

end
