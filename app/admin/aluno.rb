ActiveAdmin.register Aluno do

  filter :nome

  permit_params :nome, :pai, :mae, :responsavel, :data_nascimento, :naturalidade, :endereco, :telefone, :matricula

  show do
    attributes_table do
      row :id
      row :nome
      row :pai
      row :mae
      row :responsavel
      row :data_nascimento
      row :naturalidade
      row :endereco
      row :matricula
      row :telefone
      row :turma
    end
  end

  form do |f|
    f.inputs "Campos" do
      f.input :nome
      f.input :pai
      f.input :mae
      f.input :responsavel
      f.input :data_nascimento, as: :date_picker
      f.input :naturalidade
      f.input :endereco
      f.input :telefone
      f.input :turma
    end
    f.actions
  end
end
