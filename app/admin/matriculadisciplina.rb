ActiveAdmin.register Matriculadisciplina do

  form do |f|
    f.inputs "Aluno e Turma" do
      f.input :matricula
      f.input :turmadisciplina
    end
    f.actions
  end
end
