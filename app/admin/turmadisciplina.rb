ActiveAdmin.register Turmadisciplina  do
  menu label: 'Plano de Disciplina'
  permit_params :turma_id, :professor_id, :disciplina, :cargahoraria, :matriculadisciplina, :descricao

  index title: 'Plano de Disciplina' do
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
